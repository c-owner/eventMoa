drop table table_reply;
drop table table_files ;
drop table table_board ;
drop table table_user ;

create table TABLE_USER (
  memberId varchar(100) not null,
  memberPw varchar(100) not null,
  memberName  varchar(100),
  memberEmail varchar(200) not null,
  memberEmailHash varchar(200),
  memberZipcode    varchar(20) not null,
  memberAddress    varchar(300)not null,
  memberAddressDETAIL varchar(300),
  memberAddressEtc  varchar(100),
  constraint event_user_pk primary key (memberId)
);

select * from table_user;

-------------
-- board --------

CREATE SEQUENCE BOARD_SEQ;

CREATE TABLE TABLE_BOARD(
	BOARDNUM INT,
	BOARDTITLE varchar(1000),
	BOARDCONTENT TEXT,
	BOARDID varchar(100),
	BOARDDATE DATE,
	CONSTRAINT BOARD_PK PRIMARY KEY(BOARDNUM),
	CONSTRAINT BOARD_FK FOREIGN KEY(BOARDID) REFERENCES TABLE_USER(MEMBERID)
);

ALTER TABLE TABLE_BOARD ADD READCOUNT INT DEFAULT 0;

SELECT * FROM TABLE_BOARD ORDER BY 1 DESC;
SELECT * FROM table_user;

--------------------------------------------------------------------------------
--첨부파일 SQL

CREATE TABLE TABLE_FILES (	
	FILENAME varchar(2000),
	BOARDNUM int,
	CONSTRAINT FILES_PK PRIMARY KEY(FILENAME),
	CONSTRAINT FILES_FK FOREIGN KEY(BOARDNUM) REFERENCES TABLE_BOARD(BOARDNUM)
);


SELECT * FROM TABLE_FILES;

--------------------------------------------
--------------------------------------------------------------------------------
-- comment Table (댓글)
CREATE SEQUENCE REPLY_SEQ;

CREATE TABLE TABLE_REPLY(
   REPLYNUM INT,
   BOARDNUM INT,
   MEMBERID VARCHAR(100),
   REPLYCONTENT VARCHAR(4000),
   CONSTRAINT REPLY_PK PRIMARY KEY(REPLYNUM),
   CONSTRAINT REPLY_BOARD_FK FOREIGN KEY(BOARDNUM) REFERENCES TABLE_BOARD(BOARDNUM),
   CONSTRAINT REPLY_MEMBER_FK FOREIGN KEY(MEMBERID) REFERENCES TABLE_USER(MEMBERID)
);

ALTER TABLE TABLE_REPLY DROP CONSTRAINT REPLY_BOARD_FK;

ALTER TABLE TABLE_REPLY ADD CONSTRAINT REPLY_BOARD_FK
FOREIGN KEY(BOARDNUM) REFERENCES TABLE_BOARD(BOARDNUM)
ON DELETE CASCADE;

SELECT * FROM TABLE_REPLY;


---------------------------
-- point  -- 

create sequence POINT_SEQ;

drop table TABLE_POINT;
create table TABLE_POINT(
	POINT_NUM INT,
	POINT_AMOUNT INT,
	POINT_DATE TIMESTAMP,
	MEMBERID VARCHAR(100),
	constraint POINT_MEMBER_FK foreign KEY(MEMBERID) references TABLE_USER(MEMBERID)
);

select * from table_point;


INSERT INTO table_user
(memberid, memberpw, membername, memberemail, memberemailhash, memberzipcode, memberaddress, memberaddressdetail, memberaddressetc)
VALUES('hds1234', '1234', 'ddd', 'ddd', 'ddd', 'dd', 'd', 'dd', 'ddd');


insert into TABLE_POINT values (nextval('POINT_SEQ'), 5000, current_timestamp, 'hds1234');

select point_date from table_point;


-- 현재 날짜 시간 조회 
select to_char(point_date, 'yyyy-mm-dd hh:mi:ss') as 결제내역
from table_point;



