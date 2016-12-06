package com.fusionsoft.docs.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "PROFILE")
public class Profile implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="USERID", unique=true, nullable=false)
	@GeneratedValue(generator="gen")
	@GenericGenerator(name="gen", strategy="foreign", parameters={@Parameter(name="property", value="customuser")})
	private int userid;
//	public List<Experience> getExperience() {
//		return experience;
//	}
//	public void setExperience(List<Experience> experience) {
//		this.experience = experience;
//	}
//	public List<Education> getEducation() {
//		return education;
//	}
//	public void setEducation(List<Education> education) {
//		this.education = education;
//	}
	public Immigration getImmigration() {
		return immigration;
	}
	public void setImmigration(Immigration immigration) {
		this.immigration = immigration;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Column(name = "FIRSTNAME")
	private String firstname;
	@Column(name = "LASTNAME")
	private String lastname;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "ADDRESS")
	private String address;
	@Column(name = "CITY")
	private String city;
	@Column(name = "STATE")
	private String state;
	@Column(name = "ZIP")
	private String zip;
	@Column(name = "COUNTRY")
	private String country;
	@Column(name = "PHONE")
	private String phone;
	@Column(name = "USERNOTES")
	private String usernotes;
	@Column(name = "ADMINNOTES")
	private String adminnotes;
	@Column(name = "LASTLOGIN")
	private Date lastlogin;
	@Column(name = "LASTMODIFIEDBY")
	private String lastmodifiedby;
	@OneToOne
	@PrimaryKeyJoinColumn
	private CustomUser customuser;
//	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
//	@OneToMany(fetch = FetchType.LAZY, mappedBy = "profile")
//	private List<Experience> experience;
//	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
//	@OneToMany(fetch = FetchType.LAZY, mappedBy = "profile")
//	private List<Education> education;
	@OneToOne(mappedBy="profile")
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	private Immigration immigration;
	
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}

	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUsernotes() {
		return usernotes;
	}
	public void setUsernotes(String usernotes) {
		this.usernotes = usernotes;
	}
	public String getAdminnotes() {
		return adminnotes;
	}
	public void setAdminnotes(String adminnotes) {
		this.adminnotes = adminnotes;
	}
	public Date getLastlogin() {
		return lastlogin;
	}
	public void setLastlogin(Date lastlogin) {
		this.lastlogin = lastlogin;
	}
	public String getLastmodifiedby() {
		return lastmodifiedby;
	}
	public void setLastmodifiedby(String lastmodifiedby) {
		this.lastmodifiedby = lastmodifiedby;
	}

}

