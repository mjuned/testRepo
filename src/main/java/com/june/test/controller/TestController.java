package com.june.test.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @RequestMapping("/test")
    public String index() {
        return "Greetings from Spring Boot!";
    }
    
    @RequestMapping("/test1")
    public String test1() {
        return "Test1";
    }
}
