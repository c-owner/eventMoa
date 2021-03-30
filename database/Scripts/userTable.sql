drop table table_user ;



create table TABLE_USER (
  memberId varchar2(100) not null,
  memberPw varchar2(100) not null,
  memberName  varchar2(100),
  memberEmail varchar2(200) not null,
  memberEmailHash varchar2(200),
  memberZipcode    varchar2(20) not null,
  memberAddress    varchar2(300)not null,
  memberAddressDETAIL varchar2(300),
  memberAddressEtc  varchar2(100),
  constraint event_user_pk primary key (memberId)
);

ALTER TABLE TABLE_USER ADD memberPoint NUMBER(10) DEFAULT 300;

select * from table_user;

-------------

INSERT INTO table_user
(memberid, memberpw, membername, memberemail, memberemailhash, memberzipcode, memberaddress, memberaddressdetail, memberaddressetc)
VALUES('hds1234', '1234', '이벤트', 'hds1234@gmail.com', 'ddd', '16577', '경기도 수원시', '팔달구', '우만로 137');





