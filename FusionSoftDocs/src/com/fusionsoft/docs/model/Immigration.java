package com.fusionsoft.docs.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
@Entity
@Table(name = "immigration")
public class Immigration implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="USERID", unique=true, nullable=false)
	@GeneratedValue(generator="gen")
	@GenericGenerator(name="gen", strategy="foreign", parameters={@Parameter(name="property", value="profile")})
	private int userid;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	@Column(name = "passportnumber")
	private String passportnumber;  
	@Column(name = "placeofissuance")
	private String placeofissuance;
	@Temporal(TemporalType.DATE)
	@Column(name = "issueddate")
	private Date issueddate;
	@Temporal(TemporalType.DATE)
	@Column(name = "expirydate")
	private Date expirydate;
	@Column(name = "currentstatus")
	private String currentstatus;
	@Temporal(TemporalType.DATE)
	@Column(name = "statusexpiry")
	private Date statusexpiry;
	@Column(name = "i94number")
	private String i94number;
	@Temporal(TemporalType.DATE)
	@Column(name ="lastentrydate")
	private Date lastentrydate;
	@OneToOne
	@PrimaryKeyJoinColumn
	private Profile profile;
	public String getPassportnumber() {
		return passportnumber;
	}
	public void setPassportnumber(String passportnumber) {
		this.passportnumber = passportnumber;
	}
	public String getPlaceofissuance() {
		return placeofissuance;
	}
	public void setPlaceofissuance(String placeofissuance) {
		this.placeofissuance = placeofissuance;
	}
	public Date getIssueddate() {
		return issueddate;
	}
	public void setIssueddate(Date issueddate) {
		this.issueddate = issueddate;
	}
	public Date getExpirydate() {
		return expirydate;
	}
	public void setExpirydate(Date expirydate) {
		this.expirydate = expirydate;
	}
	public String getCurrentstatus() {
		return currentstatus;
	}
	public void setCurrentstatus(String currentstatus) {
		this.currentstatus = currentstatus;
	}
	public Date getStatusexpiry() {
		return statusexpiry;
	}
	public void setStatusexpiry(Date statusexpiry) {
		this.statusexpiry = statusexpiry;
	}
	public String getI94number() {
		return i94number;
	}
	public void setI94number(String i94number) {
		this.i94number = i94number;
	}
	public Date getLastentrydate() {
		return lastentrydate;
	}
	public void setLastentrydate(Date lastentrydate) {
		this.lastentrydate = lastentrydate;
	}
	
	

}
