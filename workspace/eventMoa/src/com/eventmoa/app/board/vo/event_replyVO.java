package com.eventmoa.app.board.vo;
/*
REPLY_NUM NUMBER(10),
BOARD_NUM NUMBER(10),
user_Id varchar2(100),
REPLY_CONTENT varchar2(4000),
*/

public class event_replyVO {

	
	private int replyNum;
	private int boardNum;
	private String userId;
	private String replyContent;
	
	public event_replyVO() {;}

	public int getReplyNum() {
		return replyNum;
	}

	public void setReplyNum(int replyNum) {
		this.replyNum = replyNum;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	
	
}
