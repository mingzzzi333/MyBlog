package com.example.myblog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller //웹 요청 처리하는 컨트롤러
public class MainController {
    @GetMapping("/")
    public String index() {
        return "index";
    }
    @GetMapping("/login")
    public String login() {
        return "Login/login";
    }
    @GetMapping("/join")
    public String join() {
        return "mem/join";
    }
    @PostMapping("/join")
    public String joinPost(){
        return "mem/join";
    }
}

