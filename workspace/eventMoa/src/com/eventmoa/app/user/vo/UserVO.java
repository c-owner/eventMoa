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
	
}
