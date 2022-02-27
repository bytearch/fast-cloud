package com.bytearch.demo.provider.service;

import com.bytearch.dubbo.demo.api.IHelloQueryService;
import lombok.extern.slf4j.Slf4j;
import org.apache.dubbo.config.annotation.DubboService;
import org.springframework.stereotype.Component;


/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/11/30 16:34
 */
@DubboService(interfaceClass = IHelloQueryService.class, version = "1.0", timeout = 2000, delay = 5000)
@Component
@Slf4j
public class HelloQueryService implements IHelloQueryService {

    public String getHello(String name) {
        log.info("调用读方法， name:{}", name);
        return "query:" + name;
    }
}
