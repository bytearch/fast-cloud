package com.bytearch.demo.consumer.controller;

import com.bytearch.dubbo.demo.api.IHelloQueryService;
import com.bytearch.dubbo.demo.api.IHelloWriteService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/11/30 16:28
 */
@RestController
@RequestMapping("/hello")
public class HelloController {
    @DubboReference(interfaceClass = IHelloQueryService.class, version = "1.0", check = false)
    IHelloQueryService helloService;

    @DubboReference(interfaceClass = IHelloWriteService.class, version = "1.0", check = false)
    IHelloWriteService helloWriteService;

    @GetMapping("/get")
    public String get(String name) {
        return helloService.getHello(name);
    }

    @GetMapping("/write")
    public String write(String name) {
        return helloService.getHello(name);
    }
}
