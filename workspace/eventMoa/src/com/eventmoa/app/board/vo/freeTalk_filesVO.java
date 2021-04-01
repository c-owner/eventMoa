package com.eventmoa.app.board.vo;

/*
FILE_NAME varchar2(2000),
BOARD_NUM NUMBER(10),
*/
public class freeTalk_filesVO {
	private String fileName;
	private int boardNum;
	
	public freeTalk_filesVO() {;}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	
}
