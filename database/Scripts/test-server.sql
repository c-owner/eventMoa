
SELECT * FROM TABLE_USER;
SELECT * FROM TABLE_BOARD_POINT;
SELECT * FROM TABLE_BOARD_EVENT;
SELECT * FROM TABLE_BOARD_FREETALK;
SELECT * FROM TABLE_REPLY_FREETALK;
SELECT * FROM TABLE_BOARD_REVIEW;


-- 게시판 유저 닉네임
INSERT INTO TABLE_USER
(USER_ID, USER_PW, USER_NAME, USER_EMAIL, USER_EMAIL_HASH, USER_ZIPCODE, USER_ADDRESS, USER_ADDRESS_DETAIL, USER_ADDRESS_ETC, USER_POINT)
VALUES('test1', '1234', 'test', 'test', 'test', '16577', '경기도 수원', 'aa', 'aa', 0);



INSERT INTO TABLE_BOARD_REVIEW
(BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_ID, BOARD_VIEW, BOARD_DATE, BOARD_CATEGORY, E_BOARD_NUM)
VALUES(BOARD_SEQ_REVIEW.NEXTVAL, '지역은 충남 키워드~입니다효옿요ㅗㅎ오효오호오호오호호호호후어후엏어ㅜ허어', '충남 ,2,3,4~', 'admin', 58, SYSDATE, 'REVIEW', 1);

INSERT INTO TABLE_BOARD_FREETALK
(BOARD_NUM, BOARD_TITLE, BOARD_CONTENT, BOARD_ID, BOARD_VIEW, BOARD_DATE, BOARD_CATEGORY)
VALUES(BOARD_SEQ_FREETALK.NEXTVAL, '맞을걸욤 ㅋㅋ~~', '천재였지 아님? ㅋㅋ~~!!', 'admin', 900, SYSDATE, 'FREE');

SELECT COUNT(*) FROM TABLE_BOARD_FREETALK  
WHERE BOARD_CONTENT LIKE '%경기%';

SELECT * FROM TABLE_BOARD_REVIEW;
SELECT * FROM TABLE_BOARD_FREETALK tbf;

--------------------------------------------------------
--------------------------------------------------------
SELECT * FROM TABLE_BOARD_EVENT A, TABLE_BOARD_REVIEW B 
WHERE A.BOARD_NUM = B.E_BOARD_NUM;

SELECT * FROM TABLE_BOARD_EVENT A INNER JOIN TABLE_BOARD_REVIEW B 
ON A.BOARD_NUM = B.E_BOARD_NUM;

		SELECT A.BOARD_TITLE FROM TABLE_BOARD_EVENT A INNER JOIN TABLE_BOARD_REVIEW B 
		ON A.BOARD_NUM = B.E_BOARD_NUM;



