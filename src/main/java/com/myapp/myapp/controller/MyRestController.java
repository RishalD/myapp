package com.myapp.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;

@RestController
public class MyRestController {

    @GetMapping("/")
    public String myApp(){
        return "Hello World! Plymouth " + LocalDate.now();
    }


}
