drop table TABLE_BOARD_freeTalk;
drop table table_freeTalk_files ;
drop table TABLE_freeTalk_REPLY ;
drop sequence BOARD_freeTalk_SEQ;
drop sequence REPLY_freeTalk_SEQ;

------------------------- 자유게시판 sql -------------------------
-- freeTalk --------------------------
-- board --------

CREATE SEQUENCE BOARD_freeTalk_SEQ;

CREATE TABLE TABLE_BOARD_freeTalk(
	BOARDNUM NUMBER(10),
	BOARD_LIKES NUMBER(10), -- 추천수
	BOARD_TITLE varchar2(1000), -- 제목
	BOARD_CONTENT varchar2(3000), -- 내용 
	BOARDID varchar2(100), -- 닉네임/ID
	BOARD_VIEW NUMBER(10) DEFAULT 0, -- 조회수
	BOARD_DATE DATE,
	CONSTRAINT BOARD_PK PRIMARY KEY(BOARDNUM),
	CONSTRAINT BOARD_FK FOREIGN KEY(BOARDID) REFERENCES TABLE_USER(MEMBERID)
);

ALTER TABLE TABLE_freeTalk ADD READCOUNT NUMBER(10) DEFAULT 0;
ALTER TABLE TABLE_freeTalk ADD LOCATION VARCHAR2()

SELECT * FROM TABLE_BOARD_freeTalk ORDER BY 1 DESC;
SELECT * FROM table_user;

--------------------------------------------------------------------------------
--첨부파일 SQL

CREATE TABLE table_freeTalk_files (	
	FILENAME varchar2(2000),
	BOARDNUM NUMBER(10),
	CONSTRAINT FILES_PK PRIMARY KEY(FILENAME),
	CONSTRAINT FILES_FK FOREIGN KEY(BOARDNUM) REFERENCES TABLE_BOARD_freeTalk(BOARDNUM)
);


SELECT * FROM table_freeTalk_files;

--------------------------------------------
--------------------------------------------------------------------------------
-- comment Table (댓글)
CREATE SEQUENCE REPLY_freeTalk_SEQ;

CREATE TABLE TABLE_freeTalk_REPLY(
   REPLYNUM NUMBER(10),
   BOARDNUM NUMBER(10),
   MEMBERID varchar2(100),
   REPLYCONTENT varchar2(4000),
   CONSTRAINT REPLY_PK PRIMARY KEY(REPLYNUM),
   CONSTRAINT REPLY_freeTalk_BOARD_FK FOREIGN KEY(BOARDNUM) REFERENCES TABLE_BOARD_freeTalk(BOARDNUM),
   CONSTRAINT REPLY_MEMBER_FK FOREIGN KEY(MEMBERID) REFERENCES TABLE_USER(MEMBERID)
);

ALTER TABLE TABLE_freeTalk_REPLY DROP CONSTRAINT REPLY_freeTalk_BOARD_FK;

ALTER TABLE TABLE_freeTalk_REPLY ADD CONSTRAINT REPLY_freeTalk_BOARD_FK
FOREIGN KEY(BOARDNUM) REFERENCES TABLE_BOARD_freeTalk(BOARDNUM)
ON DELETE CASCADE;

SELECT * FROM TABLE_freeTalk_REPLY;



----------------------------------------------------------------------------------------------------
------------------------- 결제내역 게시판
drop table TABLE_BOARD_POINT;
drop sequence TABLE_BOARD_POINT_SEQ;

create sequence TABLE_BOARD_POINT_SEQ;

create table TABLE_BOARD_POINT(
	POINT_NUM NUMBER(10),	
	POINT_DATE TIMESTAMP,
	POINT_AMOUNT NUMBER(10),
	CONTENTS VARCHAR2(500),
	MEMBERID varchar2(100),
	constraint POINT_MEMBER_FK foreign KEY(MEMBERID) references TABLE_USER(MEMBERID)
);

select * from TABLE_BOARD_POINT;


insert into TABLE_BOARD_POINT values (TABLE_BOARD_POINT_SEQ.NEXTVAL, current_timestamp, 5000, '5000포인트 결제' , 'hds1234');

select point_date from TABLE_BOARD_POINT;

select * from TABLE_BOARD_POINT;
-- 현재 날짜 시간 조회 
select to_char(point_date, 'yyyy-mm-dd hh:mi:ss') as 결제내역
from TABLE_BOARD_POINT;


--------------------------------------------------------------------

