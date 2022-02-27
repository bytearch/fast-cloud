package com.bytearch.demo.provider.service;

import com.bytearch.dubbo.demo.api.IHelloWriteService;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Component;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/12/1 11:16
 */
@DubboService(interfaceClass = IHelloWriteService.class, version = "1.0", timeout = 2000,retries = 0, delay = 5000)
@Component
@Slf4j
public class HelloWriteService implements IHelloWriteService {
    public String write(String name) {
        log.info("调用写方法， name:{}", name);
        return "write:" + name;
    }
}
