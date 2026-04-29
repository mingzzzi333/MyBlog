package com.example.myblog;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
    int insertMember (MemberDTO memberDTO);
} 

    
