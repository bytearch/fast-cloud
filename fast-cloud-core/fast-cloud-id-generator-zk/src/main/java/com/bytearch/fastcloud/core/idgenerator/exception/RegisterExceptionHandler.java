package com.bytearch.fastcloud.core.idgenerator.exception;

import lombok.extern.slf4j.Slf4j;
import org.apache.zookeeper.KeeperException;

@Slf4j
public class RegisterExceptionHandler {

    /**
     * 处理异常.
     *
     * <p>处理掉中断和连接失效异常并继续抛注册中心.</p>
     *
     * @param cause 待处理异常.
     */
    public static void handleException(final Exception cause) {
        if (null == cause) {
            return;
        }
        if (isIgnoredException(cause) || null != cause.getCause() && isIgnoredException(cause.getCause())) {
            log.debug("IDGenerator: ignored exception for: {}", cause.getMessage());
        } else if (cause instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        } else {
            throw new RegisterException(cause);
        }
    }

    private static boolean isIgnoredException(final Throwable cause) {
        return cause instanceof KeeperException.ConnectionLossException || cause instanceof KeeperException.NoNodeException || cause instanceof KeeperException.NodeExistsException;
    }
}
