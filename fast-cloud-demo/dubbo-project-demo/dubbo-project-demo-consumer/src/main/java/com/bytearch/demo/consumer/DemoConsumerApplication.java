package com.bytearch.demo.consumer;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/11/30 16:21
 */
@SpringBootApplication
//@EnableDubbo
public class DemoConsumerApplication {
    public static void main(String[] args) {
        new SpringApplicationBuilder(DemoConsumerApplication.class).web(WebApplicationType.SERVLET).run(args);
    }
}
