
-- 유저 계정 테이블 SQL

DROP TABLE TABLE_USER;

CREATE TABLE TABLE_USER (
  memberId varchar2(100) not null,
  memberPw varchar2(100) not null,
  memberName  varchar2(100),
  memberEmail varchar2(200) not null,
  memberEmailHash varchar2(200),
  memberZipcode    varchar2(20) not null,
  memberAddress    varchar2(300)not null,
  memberAddressDETAIL varchar2(300),
  memberAddressEtc  varchar2(100),
  memberPoint NUMBER(10) NULL, -- 일단 NULL
  CONSTRAINT EVENT_USER_PK PRIMARY KEY(memberId)
);

-- ALTER TABLE TABLE_USER ADD memberPoint NUMBER(10) DEFAULT 300;

SELECT * FROM TABLE_USER;

-------------

INSERT INTO TABLE_USER
(memberid, memberpw, membername, memberemail, memberemailhash, memberzipcode, memberaddress, memberaddressdetail, memberaddressetc)
VALUES('hds1234', '1234', '이벤트', 'hds1234@gmail.com', 'ddd', '16577', '경기도 수원시', '팔달구', '우만로 137');







