package com.elysia.gate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @BelongsProject: elysia-gate
 * @BelongsPackage: com.elysia.gate
 * @Author: ElysiaKafka
 * @CreateTime: 2024-01-31  11:42:27
 * @Description: TODO
 * @Version: 1.0
 */
@Controller
public class ElysiaGateController {

    @GetMapping("/")
    public String openGate(){
        return "index";
    }
}
