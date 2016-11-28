package com.fusionsoft.docs.model;

public class Email {
	private String profileemail;
	public Email(String profileemail, String message) {
		super();
		this.profileemail = profileemail;
		this.message = message;
	}
	public String getProfileemail() {
		return profileemail;
	}
	public void setProfileemail(String profileemail) {
		this.profileemail = profileemail;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	private String message;

}
