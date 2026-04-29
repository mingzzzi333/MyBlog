/*MEMBER*/
create table member(
    memNum number primary key,
    memId varchar2(50) UNIQUE not null,
    memPw varchar2(100) not NULL,
    memName VARCHAR2(50)  NOT NULL,
    memEmail VARCHAR2(100) UNIQUE NOT NULL,
    memPhone VARCHAR2(20) UNIQUE NOT NULL,
    memBirth DATE,
    memSex Char(1),
    memAddress varchar2(200),
    memAddressDetail varchar2(200),
    memImg varchar2(500),
    memJoinDate Date default sysdate,
    memStatus char(1) default 'Y'
);

/*BOARD*/
create table board(
    boardNum number primary key,
    memNum number not null,
    boardName varchar2(100) not null,
    boardCreateAt DATE default sysdate,
    foreign key (memNum) references member(memNum)
);

/*POST*/
create table post(
    postNum number primary key,
    boardNum number not null,
    memNum number not null,
    postTitle varchar2(200) not null,
    postContents clob,
    postUpdateDate date,
    postViews number default 0,
    postLikes number default 0,
    foreign key(boardNum) references board(boardNum),
    foreign key(memNum) references member(memNum)

);

/*POST_FILE*/
CREATE TABLE POST_FILE (
    fileNum    NUMBER PRIMARY KEY,
    postNum    NUMBER NOT NULL,
    fileName   VARCHAR2(500),
    filePath   VARCHAR2(500),
    fileType   VARCHAR2(50),
    FOREIGN KEY (postNum) REFERENCES POST(postNum)
);

/*COMMENTS*/
CREATE TABLE comments (
    commentNum     NUMBER PRIMARY KEY,
    postNum        NUMBER NOT NULL,
    memNum         NUMBER NOT NULL,
    commentContents VARCHAR2(1000) NOT NULL,
    commentDate    DATE DEFAULT SYSDATE,
    FOREIGN KEY (postNum) REFERENCES post(postNum),
    FOREIGN KEY (memNum) REFERENCES MEMBER(memNum)
);

/*LIKES*/
CREATE TABLE LIKES (
    likeNum    NUMBER PRIMARY KEY,
    postNum    NUMBER NOT NULL,
    memNum     NUMBER NOT NULL,
    FOREIGN KEY (postNum) REFERENCES POST(postNum),
    FOREIGN KEY (memNum) REFERENCES MEMBER(memNum)
);



SELECT TABLE_NAME FROM USER_TABLES 
WHERE TABLE_NAME IN ('MEMBER', 'BOARD', 'POST', 'POST_FILE', 'COMMENT', 'LIKES');