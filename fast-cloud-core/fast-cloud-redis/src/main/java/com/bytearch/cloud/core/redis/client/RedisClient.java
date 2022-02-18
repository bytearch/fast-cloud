package com.bytearch.cloud.core.redis.client;

import com.bytearch.cloud.core.redis.facade.RedisSupport;
import com.bytearch.cloud.core.redis.serializer.SerializationUtils;
import com.bytearch.cloud.core.redis.serializer.Serializer;
import com.bytearch.cloud.core.redis.serializer.enums.SerializerEnum;
import com.bytearch.cloud.core.redis.serializer.exception.SerializationException;
import com.bytearch.cloud.core.redis.serializer.jackson.Jackson2JsonSerializer;
import com.fasterxml.jackson.core.type.TypeReference;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.exceptions.JedisClusterException;

import java.util.*;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/12 21:58
 */
public class RedisClient implements RedisSupport {
    private static final Logger logger = LoggerFactory.getLogger(RedisClient.class);

    private static final SerializerEnum DEFAULT_SERIALIZER = SerializerEnum.JACKSON2JSON;

    private static final int DEFAULT_MAX_TOTAL = 1024;

    private static final int DEFAULT_MAX_IDLE = 30;

    private static final int DEFAULT_MIN_IDLE = 0;

    private static final int CONNECTION_TIMEOUT = 1500;

    private static final int SO_TIMEOUT = 2000;

    private static final int MAX_REDIRECTIONS = 2;

    private JedisCluster jc;

    private byte[] prefix;

    private Serializer<Object> serializer;

    /**
     * 重载构造函数,提供默认参数
     */
    public RedisClient(String cluster, String prefix, String password) {
        this(cluster, prefix, password, DEFAULT_SERIALIZER,
                DEFAULT_MAX_IDLE, DEFAULT_MAX_TOTAL, DEFAULT_MIN_IDLE,
                CONNECTION_TIMEOUT, SO_TIMEOUT, MAX_REDIRECTIONS);
    }

    public RedisClient(String cluster, String prefix, String password, SerializerEnum serializerType) {
        this(cluster, prefix, password, serializerType,
                DEFAULT_MAX_IDLE, DEFAULT_MAX_TOTAL, DEFAULT_MIN_IDLE,
                CONNECTION_TIMEOUT, SO_TIMEOUT, MAX_REDIRECTIONS);
    }

    /**
     *
     * @param cluster           格式为ip:port,ip:port
     * @param prefix            redis-cluster全局KEY前缀
     * @param password          密码
     * @param serializerType    序列化方式
     * @param maxIdle           最多能保留多少个空闲对象
     * @param maxTotal          最多能保留多少对象
     * @param minIdle           最少有多少个空闲对象
     * @param connectionTimeout 连接超时
     * @param soTimeout         返回值的超时时间
     * @param maxAttempts       出现异常最大重试次数
     */
    public RedisClient(String cluster, String prefix, String password, SerializerEnum serializerType,
                       int maxIdle, int maxTotal, int minIdle,
                       int connectionTimeout, int soTimeout, int maxAttempts) {
        try {
            if(cluster == null || cluster.trim().length() == 0) {
                throw new JedisClusterException("cluster str is null.");
            }

            if(prefix == null || prefix.trim().length() == 0) {
                throw new JedisClusterException("prefix is null.");
            }

            String[] hostAndPort = cluster.split(",");
            Set<HostAndPort> jedisClusterNodesSet = new HashSet<HostAndPort>();
            for(String hp : hostAndPort) {
                String[] hap = hp.split(":");
                jedisClusterNodesSet.add(new HostAndPort(hap[0], Integer.parseInt(hap[1])));
            }
            GenericObjectPoolConfig genericObjectPoolConfig = new GenericObjectPoolConfig();
            genericObjectPoolConfig.setMaxIdle(maxIdle);
            genericObjectPoolConfig.setMaxTotal(maxTotal);
            genericObjectPoolConfig.setMinIdle(minIdle);
            jc = new JedisCluster(jedisClusterNodesSet, connectionTimeout, soTimeout, maxAttempts, password, genericObjectPoolConfig);
            this.prefix = getKey(prefix);
            serializerInit(serializerType);
        } catch (Exception e) {
            logger.error("redis client init error", e);
        }
    }

    private void serializerInit(SerializerEnum se) throws Exception {
        if (se == DEFAULT_SERIALIZER) {
            this.serializer = new Jackson2JsonSerializer();
        } else {
            throw new SerializationException("error serializer type.");
        }
    }

    @Deprecated
    @Override
    public String set(final String key, final Object value) {
        return this.jc.set(getKey(key), serializer.serialize(value));
    }

    @Override
    public String set(final String key, int expTime, final Object value) {
        return this.jc.setex(getKey(key), expTime, serializer.serialize(value));
    }

    @Override
    public String set(String key, int expTime, String value) {
        return this.jc.setex(getKey(key), expTime, serializer.serialize(value));
    }

    @Override
    public <T> T getSet(final String key, final Object value, Class<T> javaType) {
        byte[] data = this.jc.getSet(getKey(key), serializer.serialize(value));
        return serializer.deserialize(data, javaType);
    }

    @Override
    public <T> T get(final String key, Class<T> javaType) {
        return serializer.deserialize(this.jc.get(getKey(key)), javaType);
    }

    /**
     * 当serializerType不等于DEFAULT_SERIALIZER时,
     * 使用该方法会抛出异常
     */
    @Override
    public <T> T get(final String key, TypeReference<T> tr) {
        byte[] value = this.jc.get(getKey(key));
        if (serializer instanceof Jackson2JsonSerializer) {
            return ((Jackson2JsonSerializer)serializer).deserialize(value, tr);
        } else {
            // This method does not belong to this type of serialization
            throw new SerializationException("serializer type error");
        }
    }

    @Override
    public String get(final String key) {
        return serializer.deserialize(this.jc.get(getKey(key)), String.class);
    }

    @Override
    public long delete(final String key) {
        return this.jc.del(getKey(key));
    }

    private byte[] getKey(String key) {
        byte[] rawKey = SerializationUtils.encode(key);
        if(!this.hasPrefix()) {
            return rawKey;
        } else {
            byte[] prefixedKey = Arrays.copyOf(this.prefix, this.prefix.length + rawKey.length);
            System.arraycopy(rawKey, 0, prefixedKey, this.prefix.length, rawKey.length);
            return prefixedKey;
        }
    }

    /** getKey的逆操作 获取原始key值 */
    private String getOriginalKey(byte[] key) {
        if (!this.hasPrefix()) {
            return new String(key);
        } else {
            int keyLen = key.length - this.prefix.length;
            byte[] originalKey = new byte[keyLen];
            System.arraycopy(key, this.prefix.length, originalKey, 0, keyLen);
            return new String(originalKey);
        }
    }

    @Override
    public byte[] hget(final String key, final String field) {
        return this.jc.hget(getKey(key), getKey(field));
    }

    @Override
    public long hincrBy(final String key, final String field, final long value) {
        return this.jc.hincrBy(getKey(key), getKey(field), value);
    }

    @Override
    public long incrBy(final String key, final long delta) {
        return this.jc.incrBy(getKey(key), delta);
    }

    @Override
    public long expire(final String key, final int seconds) {
        return this.jc.expire(getKey(key), seconds);
    }

    @Override
    public long rpush(final String key, final Object value) {
        return this.jc.rpush(getKey(key), serializer.serialize(value));
    }

    @Override
    public <T> T lpop(final String key, Class<T> javaType) {
        return serializer.deserialize(this.jc.lpop(getKey(key)), javaType);
    }

    @Override
    public <T> T blpop(final String key, final int timeout, Class<T> javaType) {
        List<byte[]> list = this.jc.blpop(timeout, getKey(key));
        if(list == null || list.isEmpty()) {
            return null;
        } else {
            return serializer.deserialize(list.get(1), javaType);
        }
    }

    @Override
    public <T> List<T> lrange(final String key, int start, int end) {
        List<byte[]> list = this.jc.lrange(getKey(key), start, end);

        return (List)deserializeValues(list, List.class);
    }

    @Override
    public Long sadd4Sets(final String key, final Object ... values) {
        if (values == null) {
            return -1l;
        }

        byte[][] valBytes = new byte[values.length][];
        for(int i = 0; i < values.length; i ++) {
            valBytes[i] = serializer.serialize(values[i]);
        }

        return this.jc.sadd(getKey(key), valBytes);
    }

    @Override
    public <T> Set<T> smembers4Sets(final String key, Class<T> javaType) {
        Set<byte[]> resultSet = this.jc.smembers(getKey(key));
        Set<T> result = new HashSet<T>();
        if (resultSet == null) {
            return result;
        } else {
            for (byte[] b : resultSet) {
                result.add(serializer.deserialize(b, javaType));
            }
        }

        return result;
    }

    @Override
    public Long srem4Sets(final String key, final Object... values) {
        if (values == null) {
            return -1L;
        }

        byte[][] valBytes = new byte[values.length][];
        for(int i = 0; i < values.length; i ++) {
            valBytes[i] = serializer.serialize(values[i]);
        }

        return this.jc.srem(getKey(key), valBytes);
    }

    private <T extends Collection<?>> T deserializeValues(Collection<byte[]> rawValues, Class<T> type) {
        if(rawValues == null) {
            return null;
        } else {
            Object values = List.class.isAssignableFrom(type)?new ArrayList(rawValues.size()):new LinkedHashSet(rawValues.size());
            Iterator i$ = rawValues.iterator();

            while(i$.hasNext()) {
                byte[] bs = (byte[])i$.next();
                ((Collection)values).add(serializer.deserialize(bs, Object.class));
            }

            return (T) values;
        }
    }

    private boolean hasPrefix() {
        return this.prefix != null && this.prefix.length > 0;
    }

    @Override
    public Boolean exists(String key) {
        return this.jc.exists(getKey(key));
    }

    public void shutdown() {
        this.jc.close();
    }

    @Override
    public long hdel(String key, String... field) {
        if (field.length > 0) {
            byte[][] fieldArray = new byte[field.length][];
            for (int i = 0; i < field.length; i++) {
                fieldArray[i] = getKey(field[i]);
            }
            return this.jc.hdel(getKey(key), fieldArray);
        } else {
            throw new SerializationException("ERR wrong number of arguments for 'hdel' command");
        }
    }

    /** 返回哈希表 key 中，所有的域和值*/
    @Override
    public Map<String, Object> hgetAll(String key) {
        Map<byte[], byte[]> map = this.jc.hgetAll(getKey(key));
        Map<String, Object> res = new HashMap<>(map.size());
        Set<Map.Entry<byte[], byte[]>> entries = map.entrySet();
        for (Map.Entry<byte[], byte[]> e : entries) {
            res.put(getOriginalKey(e.getKey()), serializer.deserialize(e.getValue(), Object.class));
        }
        return res;
    }

    /** 同时将多个 field-value (域-值)对设置到哈希表 key 中 */
    @Override
    public String hmset(String key, Map<String, Object> map) {
        return this.jc.hmset(getKey(key), serializerMap(map));
    }

    /** 返回哈希表 key 中，一个或多个给定域的值 */
    @Override
    public List<Object> hmget(String key, String... field) {
        if (field.length > 0) {
            byte[][] fieldArray = new byte[field.length][];
            for (int i = 0; i < field.length; i++) {
                fieldArray[i] = SerializationUtils.encode(field[i]);
            }
            List<Object> res = new ArrayList<>(field.length);
            List<byte[]> values = this.jc.hmget(getKey(key), fieldArray);
            for (byte[] v : values) {
                res.add(serializer.deserialize(v, Object.class));
            }
            return res;
        } else {
            throw new SerializationException("ERR wrong number of arguments for 'hmget' command");
        }
    }

    /** 返回哈希表 key 中所有域的值 */
    @Override
    public <T> List<T> hvals(String key) {
        Collection<byte[]> hvals = this.jc.hvals(getKey(key));
        return (List)deserializeValues(hvals, List.class);
    }

    /** 返回哈希表 key 中的所有域 */
    @Override
    public Set<String> hkeys(String key) {
        Set<byte[]> hkeys = this.jc.hkeys(getKey(key));
        Set<String> res = new HashSet<>(hkeys.size());
        for (byte[] k: hkeys) {
            res.add(getOriginalKey(k));
        }
        return res;
    }


    private Map<byte[], byte[]> serializerMap(Map<String, Object> map) {
        if (map == null) {
            return SerializationUtils.EMPTY_MAP;
        }
        Map<byte[], byte[]> res = new HashMap<>(map.size());
        try {
            Set<Map.Entry<String, Object>> entries = map.entrySet();
            for (Map.Entry<String, Object> e : entries) {
                res.put(getKey(e.getKey()), serializer.serialize(e.getValue()));
            }
        } catch (Exception e) {
            throw new SerializationException("Could not encode map: " + e.getMessage(), e);
        }
        return res;
    }

    @Override
    public Long setnx(String key, Object value) {
        return this.jc.setnx(getKey(key), serializer.serialize(value));
    }

    @Override
    public Long llen(String key) {
        return this.jc.llen(getKey(key));
    }

    @Override
    public Long lrem(String key, long count, Object value) {
        return this.jc.lrem(getKey(key), count, serializer.serialize(value));
    }
}
