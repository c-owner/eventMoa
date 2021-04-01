package com.eventmoa.app.board.vo;

/*
BOARD_NUM NUMBER(10),
BOARD_LIKES NUMBER(10), -- 추천수
BOARD_TITLE varchar2(1000), -- 제목
BOARD_CONTENT varchar2(3000), -- 내용 
BOARD_ID varchar2(100), -- 닉네임/ID
BOARD_VIEW NUMBER(10) DEFAULT 0, -- 조회수
BOARD_DATE DATE,
*/
public class freeTalk_boardVO {
	
	private int boardNum;
	private int boardLikes;
	private String boardTitle;
	private String boardContent;
	private String boardId;
	private int boardView;
	private String boardDate;
	
	
	public freeTalk_boardVO() {;}


	public int getBoardNum() {
		return boardNum;
	}


	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}


	public int getBoardLikes() {
		return boardLikes;
	}


	public void setBoardLikes(int boardLikes) {
		this.boardLikes = boardLikes;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public String getBoardId() {
		return boardId;
	}


	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}


	public int getBoardView() {
		return boardView;
	}


	public void setBoardView(int boardView) {
		this.boardView = boardView;
	}


	public String getBoardDate() {
		return boardDate;
	}


	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	
}
