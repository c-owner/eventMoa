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
DROP SEQUENCE BOARD_SEQ_freeTalk;
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

 
INSERT INTO TABLE_BOARD_freeTalk
VALUES(BOARD_SEQ_freeTalk.NEXTVAL, 21, '테스트 제목', '테스트 내용', 'admin1', 1, SYSDATE);
SELECT * FROM TABLE_BOARD_freeTalk ORDER BY 1 DESC; 



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


SELECT * FROM TABLE_FILES_freeTalk;

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


insert into TABLE_BOARD_POINT values (BOARD_SEQ_POINT.NEXTVAL, current_timestamp, 5000, '5000포인트 결제' , 'admin1');

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
	BOARD_TITLE varchar2(100), -- 제목
	BOARD_CONTENT varchar2(3000), -- 내용 
	BOARD_ID varchar2(100), -- 닉네임/ID
	BOARD_VIEW NUMBER(10) DEFAULT 0, -- 조회수
	BOARD_DATE DATE, -- 게시물 날짜
	BOARD_Zipcode varchar2(20),
	BOARD_Address varchar2(300),
	BOARD_Address_Detail varchar2(300),
	BOARD_Address_Etc varchar2(100),
	BOARD_LIKE NUMBER(10) DEFAULT 0,
	BOARD_CALLNUMBER NUMBER(20),
	BOARD_PHONENUMBER NUMBER(20),
	EVT_START_DT DATE,
	EVT_END_DT DATE,
	FILE_NAME VARCHAR2(2000),
	
	CONSTRAINT BOARD_EVENT_PK PRIMARY KEY(BOARD_NUM),
	CONSTRAINT BOARD_EVENT_FK FOREIGN KEY(BOARD_ID) REFERENCES TABLE_USER(user_Id)
);
-- 0413 업데이트 
ALTER TABLE  TABLE_BOARD_EVENT ADD BOARD_LIKE NUMBER(10);
--- 0414 업데이트
ALTER TABLE TABLE_BOARD_EVENT ADD BOARD_CALLNUMBER VARCHAR2(20);
ALTER TABLE TABLE_BOARD_EVENT ADD BOARD_PHONENUMBER VARCHAR2(20);
--

SELECT EVT_START_DT 시작시간, EVT_END_DT 종료시간 FROM TABLE_BOARD_EVENT ORDER BY 1 ASC;

SELECT EVT_START_DT FROM TABLE_BOARD_EVENT;

SELECT BOARD_CALLNUMBER FROM TABLE_BOARD_EVENT ORDER BY 1 DESC;
SELECT BOARD_PHONENUMBER FROM TABLE_BOARD_EVENT;
SELECT * FROM TABLE_FILES_EVENT;


-- 휴대폰 FORMAT 번호로 조회
SELECT SUBSTR(BOARD_CALLNUMBER, 1,3) || '-' || SUBSTR(BOARD_CALLNUMBER, 4, 4) || '-' || SUBSTR(BOARD_CALLNUMBER, 8) FROM TABLE_BOARD_EVENT;

-- 4 4 FORMAT 번호로 조회
SELECT SUBSTR(BOARD_CALLNUMBER, 1, 4) || '-' || SUBSTR(BOARD_CALLNUMBER, 4, 4) FROM TABLE_BOARD_EVENT;

INSERT INTO TABLE_BOARD_EVENT
(BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, 
BOARD_ID, BOARD_VIEW, BOARD_DATE, 
EVT_START_DT, EVT_END_DT, 
BOARD_ZIPCODE, BOARD_ADDRESS, BOARD_ADDRESS_DETAIL, BOARD_ADDRESS_ETC, BOARD_CALLNUMBER)
VALUES(BOARD_SEQ_EVENT.NEXTVAL, '호식이 두마리', '어서오세용 빨리오세용', 
'admin1', 0, sysdate, sysdate, to_date('2021-04-13 13:12', 'yyyy-mm-dd hh24:mi'),
'16577', '경기도 수원시', '세지로 23', '팔달구', '01073500816');

SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '서울%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '부산%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '대구%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '광주%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '인천%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '대전%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '울산%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '경기%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '강원%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '충북%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '충남%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '경북%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '경남%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '전북%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '전남%';
SELECT * FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '제주%';

SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 서울 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '서울%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 부산 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '부산%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 대구 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '대구%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 광주 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '광주%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 인천 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '인천%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 대전 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '대전%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 울산 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '울산%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 경기 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '경기%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 강원 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '강원%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 충북 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '충북%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 충남 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '충남%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 경북 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '경북%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 경남 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '경남%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 전북 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '전북%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 전남 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '전남%';
SELECT SUBSTR(BOARD_ADDRESS, 0, 2) AS 제주 FROM TABLE_BOARD_EVENT WHERE BOARD_ADDRESS LIKE '제주%';



---------------------------------------
-- 이벤트 첨부파일 (이미지 테이블)
DROP TABLE TABLE_FILES_EVENT;

CREATE TABLE TABLE_FILES_EVENT(
	FILE_NAME varchar2(2000),
	BOARD_NUM NUMBER(10),
	CONSTRAINT FILES_EVENT_PK PRIMARY KEY(FILE_NAME),
	CONSTRAINT FILES_EVENT_FK FOREIGN KEY(BOARD_NUM) REFERENCES TABLE_BOARD_EVENT(BOARD_NUM)
);

SELECT * FROM TABLE_FILES_EVENT;
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

SELECT * FROM TABLE_REPLY_EVENT;
----------------------------------------------------------
