package com.eventmoa.app.board.vo;

/*
BOARD_NUM NUMBER(10), -- 게시글 번호?
BOARD_TITLE varchar2(50), -- 제목
BOARD_CONTENT varchar2(3000), -- 내용 
BOARD_ID varchar2(100), -- 닉네임/ID
BOARD_VIEW NUMBER(10) DEFAULT 0, -- 조회수
BOARD_DATE DATE, -- 게시물 날짜
BOARD_LOCATION VARCHAR2(50), -- 지역
*/
public class event_boardVO {

	private int boardNum;
	private String boardTitle;
	private String boardContent;
	private String boardId;
	private int boardView;
	private String boardDate;
	private String boardLocation;
	
	 public event_boardVO() {;}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
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

	public String getBoardLocation() {
		return boardLocation;
	}

	public void setBoardLocation(String boardLocation) {
		this.boardLocation = boardLocation;
	}
	
	 
}
