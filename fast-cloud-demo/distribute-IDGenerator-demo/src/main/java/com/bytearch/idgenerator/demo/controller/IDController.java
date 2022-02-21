package com.bytearch.idgenerator.demo.controller;

import com.bytearch.fastcloud.core.idgenerator.IdGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/id")
@RestController
public class IDController {
    @Autowired
    IdGenerator idGenerator;
    @RequestMapping("/getIdWithExtra")
    public Long getID(Integer userId) {
        return idGenerator.generate(userId % 256);
    }
    @RequestMapping("/getId")
    public Long getId() {
        return idGenerator.generate();
    }

    @RequestMapping("/decodeId")
    public Map<String, Long> decodeId(Long id) {
        Map<String, Long> decodeMap = new HashMap<>();
        decodeMap.put("extraData", idGenerator.decodeExtraDataFromId(id));
        decodeMap.put("worKId", idGenerator.decodeWorkerIdFromId(id));
        decodeMap.put("createTime", idGenerator.decodeCreateDateFromID(id));
        return decodeMap;
    }
}
