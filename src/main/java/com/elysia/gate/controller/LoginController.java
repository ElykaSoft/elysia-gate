package com.elysia.gate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @BelongsProject: elysia-gate
 * @BelongsPackage: com.elysia.gate.controller
 * @Author: ElysiaKafka
 * @CreateTime: 2024-02-01  20:40:41
 * @Description: TODO
 * @Version: 1.0
 */
@Controller
public class LoginController {
    @GetMapping("/login")
    public String login(){
        return "login";
    }
}
