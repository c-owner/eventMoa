package com.eventmoa.app.board.vo;

/*
POINT_NUM NUMBER(10) PRIMARY KEY,	
POINT_DATE TIMESTAMP,
POINT_AMOUNT NUMBER(10),
POINT_CONTENT VARCHAR2(500),
user_Id varchar2(100),
*/
public class point_boardVO {

	private int pointNum;
	private String pointDate;
	private int pointAmount;
	private String pointContent;
	private String userId;
	
	public point_boardVO() {;}

	public int getPointNum() {
		return pointNum;
	}

	public void setPointNum(int pointNum) {
		this.pointNum = pointNum;
	}

	public String getPointDate() {
		return pointDate;
	}

	public void setPointDate(String pointDate) {
		this.pointDate = pointDate;
	}

	public int getPointAmount() {
		return pointAmount;
	}

	public void setPointAmount(int pointAmount) {
		this.pointAmount = pointAmount;
	}

	public String getPointContent() {
		return pointContent;
	}

	public void setPointContent(String pointContent) {
		this.pointContent = pointContent;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
	
}
