package com.eventmoa.app.board.vo;

/*
REPLY_NUM NUMBER(10),
BOARD_NUM NUMBER(10),
user_Id varchar2(100),
REPLY_CONTENT varchar2(4000),
*/
public class freeTalk_replyVO {

	private int ReplyNum;
	private int BoardNum;
	private String userId;
	private String replyContent;
	
	public freeTalk_replyVO() {;}

	public int getReplyNum() {
		return ReplyNum;
	}

	public void setReplyNum(int replyNum) {
		ReplyNum = replyNum;
	}

	public int getBoardNum() {
		return BoardNum;
	}

	public void setBoardNum(int boardNum) {
		BoardNum = boardNum;
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
