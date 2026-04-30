package com.example.myblog;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberDTO {
    private int memNum;
    private String memId;
    private String memPw;
    private String memName;
    private String memEmail;
    private String memPhone;
    private Date memBirth;
    private String memSex;
    private String memAddress;
    private String memAddressDetail;
    private String memImg;
    private String memStatus;
}
