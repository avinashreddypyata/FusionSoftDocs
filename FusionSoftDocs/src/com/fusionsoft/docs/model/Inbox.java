package com.fusionsoft.docs.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name = "inbox")
public class Inbox {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Column(name = "messageid")	
private int messageid;
@Column(name = "message")
private String message;
@Column(name = "status")
private int status;
@Temporal(TemporalType.DATE)
@Column(name = "readdate")
private Date readdate;
@Column(name = "sentby")
private String sentby;
@Temporal(TemporalType.DATE)
@Column(name = "sentdate")
private Date sentdate;
@ManyToOne(fetch = FetchType.LAZY)
@JoinColumn(name = "USERID", nullable = false)
private CustomUser customuser;
public CustomUser getCustomuser() {
	return customuser;
}
public void setCustomuser(CustomUser customuser) {
	this.customuser = customuser;
}
public int getMessageid() {
	return messageid;
}
public void setMessageid(int messageid) {
	this.messageid = messageid;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
public Date getReaddate() {
	return readdate;
}
public void setReaddate(Date readdate) {
	this.readdate = readdate;
}
public String getSentby() {
	return sentby;
}
public void setSentby(String sentby) {
	this.sentby = sentby;
}
public Date getSentdate() {
	return sentdate;
}
public void setSentdate(Date sentdate) {
	this.sentdate = sentdate;
}


}
