
-- 유저 계정 테이블 SQL

DROP TABLE TABLE_USER;

CREATE TABLE TABLE_USER (
	user_Id varchar2(100),
	user_Pw varchar2(100),
	user_Name  varchar2(100), 
	user_Email varchar2(200),
	user_Email_Hash varchar2(200),
	user_Zipcode varchar2(300),
	user_Address varchar2(300),
	user_Address_Detail varchar2(300),
	user_Address_Etc varchar2(300),
	user_Point NUMBER(10) DEFAULT 0, -- 일단 0
  	
	CONSTRAINT EVENT_USER_PK PRIMARY KEY(user_Id)
);

-- ALTER TABLE TABLE_USER ADD userPoint NUMBER(10) DEFAULT 300;

SELECT * FROM TABLE_USER;

-------------
DELETE FROM TABLE_USER WHERE user_Id = 'eventmoa';
INSERT INTO TABLE_USER
(user_Id, user_pw, user_name, user_email, user_email_hash, user_zipcode, user_address, user_address_detail, user_address_etc)
VALUES('hds1234', '1234', '이벤트', 'hds1234@gmail.com', 'ddd', '16577', '경기도 수원시', '팔달구', '우만로 137');

SELECT * FROM TABLE_USER;





