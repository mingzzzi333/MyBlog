package com.example.myblog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    @Autowired
    MemberDAO memberDAO;
    
    public int insertMember(MemberDTO memberDTO){
        return memberDAO.insertMember(memberDTO);
    }
}
