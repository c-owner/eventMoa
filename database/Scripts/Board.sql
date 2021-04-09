--			********** RULE **********
--
-- 			게시판은 TABLE_BOARD_게시판명; 

-- 			댓글은 TABLE_REPLY_게시판명;

--		기타 테이블은 위와 같은 양식으로 목적성에 맞게 표기
--			 TABLE_테이블명_게시판명;

--			시퀀스는 테이블명_SEQ_게시판명; 
-- 			ex)		REPLY_SEQ_freeTalk;
--			ex)		BOARD_SEQ_POINT;

drop table TABLE_BOARD_freeTalk;
drop table TABLE_FILES_freeTalk;
drop table TABLE_REPLY_freeTalk;
drop sequence BOARD_SEQ_freeTalk;
drop sequence REPLY_SEQ_freeTalk;

------------------------- 자유게시판 sql -------------------------
-- freeTalk --------------------------
-- board --------

CREATE SEQUENCE BOARD_SEQ_freeTalk;

CREATE TABLE TABLE_BOARD_freeTalk(
	BOARD_NUM NUMBER(10),
	BOARD_LIKES NUMBER(10), -- 추천수
	BOARD_TITLE varchar2(1000), -- 제목
	BOARD_CONTENT varchar2(3000), -- 내용 
	BOARD_ID varchar2(100), -- 닉네임/ID
	BOARD_VIEW NUMBER(10) DEFAULT 0, -- 조회수
	BOARD_DATE DATE,
	CONSTRAINT BOARD_freeTalk_PK PRIMARY KEY(BOARD_NUM),
	CONSTRAINT BOARD_freeTalk_FK FOREIGN KEY(BOARD_ID) REFERENCES TABLE_USER(user_Id)
);

-- ALTER TABLE TABLE_BOARD_freeTalk ADD READCOUNT NUMBER(10) DEFAULT 0;
-- ALTER TABLE TABLE_BOARD_freeTalk ADD LOCATION VARCHAR2(); 


SELECT * FROM TABLE_BOARD_freeTalk ORDER BY 1 DESC;
SELECT * FROM table_user;

--------------------------------------------------------------------------------
--첨부파일 SQL

CREATE TABLE TABLE_FILES_freeTalk (	
	FILE_NAME varchar2(2000),
	BOARD_NUM NUMBER(10),
	CONSTRAINT FILES_freeTalk_PK PRIMARY KEY(FILE_NAME),
	CONSTRAINT FILES_freeTalk_FK FOREIGN KEY(BOARD_NUM) REFERENCES TABLE_BOARD_freeTalk(BOARD_NUM)
);


SELECT * FROM table_freeTalk_files;

--------------------------------------------
--------------------------------------------------------------------------------
-- comment Table (댓글)
CREATE SEQUENCE REPLY_SEQ_freeTalk;

CREATE TABLE TABLE_REPLY_freeTalk(
   REPLY_NUM NUMBER(10),
   BOARD_NUM NUMBER(10),
   user_Id varchar2(100),
   REPLY_CONTENT varchar2(4000),
   CONSTRAINT REPLY_freeTalk_PK PRIMARY KEY(REPLY_NUM),
   CONSTRAINT REPLY_freeTalk_FK FOREIGN KEY(BOARD_NUM) REFERENCES TABLE_BOARD_freeTalk(BOARD_NUM),
   CONSTRAINT REPLY_freeTalk_MEMBER_FK FOREIGN KEY(user_Id) REFERENCES TABLE_USER(user_Id)
);

ALTER TABLE TABLE_REPLY_freeTalk DROP CONSTRAINT REPLY_freeTalk_FK;

ALTER TABLE TABLE_REPLY_freeTalk ADD CONSTRAINT REPLY_freeTalk_FK
FOREIGN KEY(BOARD_NUM) REFERENCES TABLE_BOARD_freeTalk(BOARD_NUM)
ON DELETE CASCADE;

SELECT * FROM TABLE_REPLY_freeTalk;



----------------------------------------------------------------------------------------------------
------------------------- 결제내역 게시판

DROP SEQUENCE BOARD_SEQ_POINT;
CREATE SEQUENCE BOARD_SEQ_POINT;

DROP TABLE TABLE_BOARD_POINT;
create table TABLE_BOARD_POINT(
	POINT_NUM NUMBER(10) PRIMARY KEY,	
	POINT_DATE TIMESTAMP,
	POINT_AMOUNT NUMBER(10),
	POINT_CONTENT VARCHAR2(500),
	user_Id varchar2(100),
	constraint POINT_MEMBER_FK foreign KEY(user_Id) references TABLE_USER(user_Id)
);

select * from TABLE_BOARD_POINT;


insert into TABLE_BOARD_POINT values (BOARD_SEQ_POINT.NEXTVAL, current_timestamp, 5000, '5000포인트 결제' , 'hds1234');

select point_date from TABLE_BOARD_POINT;

select * from TABLE_BOARD_POINT;
-- 현재 날짜 시간 조회 
select to_char(point_date, 'yyyy-mm-dd hh:mi:ss') as 결제내역
from TABLE_BOARD_POINT;


--------------------------------------------------------------------

------------------------- 이벤트 페이지 SQL -------------------------

DROP SEQUENCE BOARD_SEQ_EVENT;
CREATE SEQUENCE BOARD_SEQ_EVENT;

DROP TABLE TABLE_BOARD_EVENT;
CREATE TABLE TABLE_BOARD_EVENT(
	BOARD_NUM NUMBER(10), -- 게시글 번호?
	BOARD_TITLE varchar2(50), -- 제목
	BOARD_CONTENT varchar2(3000), -- 내용 
	BOARD_ID varchar2(100), -- 닉네임/ID
	BOARD_VIEW NUMBER(10) DEFAULT 0, -- 조회수
	BOARD_DATE DATE, -- 게시물 날짜
	BOARD_LOCATION VARCHAR2(50), -- 지역
	
	CONSTRAINT BOARD_EVENT_PK PRIMARY KEY(BOARD_NUM),
	CONSTRAINT BOARD_EVENT_FK FOREIGN KEY(BOARD_ID) REFERENCES TABLE_USER(user_Id)
);
ALTER TABLE TABLE_BOARD_EVENT ADD FILE_NAME varchar2(2000);

-- ALTER TABLE TABLE_BOARD_EVENT ADD READCOUNT NUMBER(10) DEFAULT 0;
-- ALTER TABLE TABLE_BOARD_EVENT DROP COLUMN BOARD_VIEW;
-- ALTER TABLE TABLE_BOARD_EVENT ADD LOCATION VARCHAR2(50);

SELECT * FROM TABLE_BOARD_EVENT ORDER BY 1 DESC;

INSERT INTO TABLE_BOARD_EVENT
(BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_ID, BOARD_VIEW, BOARD_DATE, BOARD_LOCATION)
VALUES(BOARD_SEQ_EVENT.NEXTVAL, 'test1', 'test', 'admin1', 0, sysdate, 'test');
---------------------------------------
-- 이벤트 첨부파일 (이미지 테이블)
DROP TABLE TABLE_FILES_EVENT;

CREATE TABLE TABLE_FILES_EVENT(
	FILE_NAME varchar2(2000),
	BOARD_NUM NUMBER(10),
	CONSTRAINT FILES_EVENT_PK PRIMARY KEY(FILE_NAME),
	CONSTRAINT FILES_EVENT_FK FOREIGN KEY(BOARD_NUM) REFERENCES TABLE_BOARD_EVENT(BOARD_NUM)
);

--------------------------------------

-- 이벤트 댓글 (댓글 테이블)
DROP SEQUENCE REPLY_SEQ_EVENT;

CREATE SEQUENCE REPLY_SEQ_EVENT;

DROP TABLE TABLE_REPLY_EVENT; 

CREATE TABLE TABLE_REPLY_EVENT (
   REPLY_NUM NUMBER(10),
   BOARD_NUM NUMBER(10),
   user_Id varchar2(100),
   REPLY_CONTENT varchar2(4000),
   CONSTRAINT REPLY_EVENT_PK PRIMARY KEY(REPLY_NUM),
   CONSTRAINT REPLY_EVENT_MEMBER_FK FOREIGN KEY(user_Id) REFERENCES TABLE_USER(user_Id),
   CONSTRAINT REPLY_EVENT_FK FOREIGN KEY(BOARD_NUM) REFERENCES TABLE_BOARD_EVENT(BOARD_NUM)
);

----------------------------------------------------------
