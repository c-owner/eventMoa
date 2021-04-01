package com.eventmoa.app.user.vo;

/*
user_Id varchar2(100) not null,
user_Pw varchar2(100) not null,
user_Name  varchar2(100),
user_Email varchar2(200) not null,
user_Email_Hash varchar2(200),
user_Zipcode    varchar2(20) not null,
user_Address    varchar2(300)not null,
user_Address_DETAIL varchar2(300),
user_Address_Etc  varchar2(100),
user_Point NUMBER(10) NULL, -- 일단 NULL
*/
public class userVO {
	private String userId;
	private String userPw;
	private String userName;
	private String userEmail;
	private String userEmailHash;
	private String userZipcode;
	private String userAddress;
	private String userAddressDetail;
	private String userAddressEtc;
	private int userPoint;
	
	public userVO() {;}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserEmailHash() {
		return userEmailHash;
	}

	public void setUserEmailHash(String userEmailHash) {
		this.userEmailHash = userEmailHash;
	}

	public String getUserZipcode() {
		return userZipcode;
	}

	public void setUserZipcode(String userZipcode) {
		this.userZipcode = userZipcode;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserAddressDetail() {
		return userAddressDetail;
	}

	public void setUserAddressDetail(String userAddressDetail) {
		this.userAddressDetail = userAddressDetail;
	}

	public String getUserAddressEtc() {
		return userAddressEtc;
	}

	public void setUserAddressEtc(String userAddressEtc) {
		this.userAddressEtc = userAddressEtc;
	}

	public int getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	
	
}
