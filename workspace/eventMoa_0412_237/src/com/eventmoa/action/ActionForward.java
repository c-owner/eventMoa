package com.eventmoa.action;

public class ActionForward {
	private boolean isRedirect;
	private String path;
	private String verify;
	
	public ActionForward() {;}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getVerify() {
		return verify;
	}

	public void setVerify(String verify) {
		this.verify = verify;
	}
	
	
	
	
}
