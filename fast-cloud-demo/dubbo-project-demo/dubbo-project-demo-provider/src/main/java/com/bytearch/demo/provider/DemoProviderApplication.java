package com.bytearch.demo.provider;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/11/30 16:32
 */
@SpringBootApplication
@EnableDubbo
public class DemoProviderApplication {
    public static void main(String[] args) {
        new SpringApplicationBuilder(DemoProviderApplication.class).web(WebApplicationType.NONE).run(args);
    }
}
