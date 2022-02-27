package com.bytearch.sharding.jdbc.mysql.demo;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.bytearch.sharding.jdbc.mysql.demo.mapper")
public class ShardingJDBCDemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(ShardingJDBCDemoApplication.class, args);
    }
}
