
-- 유저 계정 테이블 SQL

DROP TABLE TABLE_USER;

CREATE TABLE TABLE_USER (
  member_Id varchar2(100) not null,
  member_Pw varchar2(100) not null,
  member_Name  varchar2(100),
  member_Email varchar2(200) not null,
  member_Email_Hash varchar2(200),
  member_Zipcode    varchar2(20) not null,
  member_Address    varchar2(300)not null,
  member_Address_DETAIL varchar2(300),
  member_Address_Etc  varchar2(100),
  member_Point NUMBER(10) NULL, -- 일단 NULL
  CONSTRAINT EVENT_USER_PK PRIMARY KEY(member_Id)
);

-- ALTER TABLE TABLE_USER ADD memberPoint NUMBER(10) DEFAULT 300;

SELECT * FROM TABLE_USER;

-------------

INSERT INTO TABLE_USER
(member_Id, member_pw, member_name, member_email, member_email_hash, member_zipcode, member_address, member_address_detail, member_address_etc)
VALUES('hds1234', '1234', '이벤트', 'hds1234@gmail.com', 'ddd', '16577', '경기도 수원시', '팔달구', '우만로 137');







