package com.example.myblog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller //웹 요청 처리하는 컨트롤러
public class MainController {
    @Autowired
    MemberService memberService;

    @GetMapping("/")
    public String index() {
        return "index";
    }
    @GetMapping("/login")
    public String login() {
        return "login/login";
    }
    @GetMapping("/join")
    public String join() {
        return "mem/join";
    }
    //회원가입 
@PostMapping("/join")
public String joinPost(MemberDTO memberDTO){
    System.out.println("memId: " + memberDTO.getMemId());
    System.out.println("memPw: " + memberDTO.getMemPw());
    memberService.insertMember(memberDTO);
    return "redirect:/";
}
    }

    


