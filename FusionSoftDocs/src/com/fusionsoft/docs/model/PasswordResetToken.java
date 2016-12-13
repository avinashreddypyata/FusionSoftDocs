package com.fusionsoft.docs.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
public class PasswordResetToken {
 
    private static final int EXPIRATION = 60 * 24;
    @Id
	@Column(name="userid", unique=true, nullable=false)
	@GeneratedValue(generator="gen")
	@GenericGenerator(name="gen", strategy="foreign", parameters={@Parameter(name="property", value="customuser")})
	private int userid;
 
  	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}


	public CustomUser getCustomuser() {
		return customuser;
	}

	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}

	public static int getExpiration() {
		return EXPIRATION;
	}

	private String token;
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userid")
	private CustomUser customuser;
  @Temporal(TemporalType.TIMESTAMP)
    private Date expiryDate;
}
