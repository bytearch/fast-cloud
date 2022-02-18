package com.bytearch.starter.canal.annotation;


import com.alibaba.otter.canal.protocol.CanalEntry;
import org.springframework.core.annotation.AliasFor;
import org.springframework.stereotype.Component;

import java.lang.annotation.*;

@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Component
public @interface CanalHandler {

    @AliasFor(annotation = Component.class)
    String value() default "";

    /**
     * canal destination
     * default for all
     * @return canal destination
     */
    String destination() default "";

    /**
     * handler database name
     * default for all
     * @return
     */
    String[] schema()  default {};

    /**
     * handler table names,
     * default handler all
     * @return
     */
    String[] table() default {};

    /**
     * event type eg:UPDATE,INSERT,DELETE default handler ALL EVENT
     * @return
     */
    CanalEntry.EventType[] eventType() default {};
}
