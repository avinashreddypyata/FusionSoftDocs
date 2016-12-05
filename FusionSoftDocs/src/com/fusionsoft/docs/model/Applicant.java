package com.fusionsoft.docs.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
@Entity
@Table(name = "application")
public class Applicant implements Serializable{
	private static final long serialVersionUID = -5466915864589861286L;
	@Id
	@Column(name="userid", unique=true, nullable=false)
	@GeneratedValue(generator="gen")
	@GenericGenerator(name="gen", strategy="foreign", parameters={@Parameter(name="property", value="customuser")})
	private int userid;
	@Column(name = "applicationtype")
	private String applicationtype;
	@Column(name="prefix")
	private String prefix;
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Column(name = "firstname")
	private String firstname;
	@Column(name = "middlename")
	private String middlename;
	@Column(name = "lastname")
	private String lastname;
	@Column(name = "maidenname")
	private String maidenname;
	@Column(name = "fullname")
	private String fullname;
	@Column(name = "dateofbirth")
	@Temporal(TemporalType.DATE)
	private Date dateofbirth;
	@Column(name = "countryofbirth")
	private String countryofbirth;
	@Column(name = "provinceofbirth")
	private String provinceofbirth;
	@Column(name = "citizenship")
	private String citizenship;
	@Column(name = "usvisit")
	private String usvisit;
	@Column(name = "socialsecuritynumber")
	private String socialsecuritynumber;
	@Column(name = "latesti94number")
	private String latesti94number;
	@Column(name = "lastentrydatetous")
	@Temporal(TemporalType.DATE)
	private Date lastentrydatetous;
	@Column(name ="aliennumber")
	private String aliennumber;
	@Column(name ="eadvalidupto")
	@Temporal(TemporalType.DATE)
	private Date eadvalidupto;
	@Column(name ="currentemployerpetitionnumber")
	private String currentemployerpetitionnumber;
	@Column(name ="currentvisaexpirydate")
	@Temporal(TemporalType.DATE)
	private Date currentvisaexpirydate;
	@Column(name ="currentvisastatus")
	private String currentvisastatus;
	@Column(name = "usernotes")
	private String usernotes;
	@Column(name = "adminnotes")
	private String adminnotes;
	@Column(name = "status")
	private String status;
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userid")
	private CustomUser customuser;	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getApplicationtype() {
		return applicationtype;
	}
	public void setApplicationtype(String applicationtype) {
		this.applicationtype = applicationtype;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getMiddlename() {
		return middlename;
	}
	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getMaidenname() {
		return maidenname;
	}
	public void setMaidenname(String maidenname) {
		this.maidenname = maidenname;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getCountryofbirth() {
		return countryofbirth;
	}
	public void setCountryofbirth(String countryofbirth) {
		this.countryofbirth = countryofbirth;
	}
	public String getProvinceofbirth() {
		return provinceofbirth;
	}
	public void setProvinceofbirth(String provinceofbirth) {
		this.provinceofbirth = provinceofbirth;
	}
	public String getCitizenship() {
		return citizenship;
	}
	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}
	public String getUsvisit() {
		return usvisit;
	}
	public void setUsvisit(String usvisit) {
		this.usvisit = usvisit;
	}
	public String getSocialsecuritynumber() {
		return socialsecuritynumber;
	}
	public void setSocialsecuritynumber(String socialsecuritynumber) {
		this.socialsecuritynumber = socialsecuritynumber;
	}
	public String getLatesti94number() {
		return latesti94number;
	}
	public void setLatesti94number(String latesti94number) {
		this.latesti94number = latesti94number;
	}
	public Date getLastentrydatetous() {
		return lastentrydatetous;
	}
	public void setLastentrydatetous(Date lastentrydatetous) {
		this.lastentrydatetous = lastentrydatetous;
	}
	public String getAliennumber() {
		return aliennumber;
	}
	public void setAliennumber(String aliennumber) {
		this.aliennumber = aliennumber;
	}
	public Date getEadvalidupto() {
		return eadvalidupto;
	}
	public void setEadvalidupto(Date eadvalidupto) {
		this.eadvalidupto = eadvalidupto;
	}
	public String getCurrentemployerpetitionnumber() {
		return currentemployerpetitionnumber;
	}
	public void setCurrentemployerpetitionnumber(String currentemployerpetitionnumber) {
		this.currentemployerpetitionnumber = currentemployerpetitionnumber;
	}
	public Date getCurrentvisaexpirydate() {
		return currentvisaexpirydate;
	}
	public void setCurrentvisaexpirydate(Date currentvisaexpirydate) {
		this.currentvisaexpirydate = currentvisaexpirydate;
	}
	public String getCurrentvisastatus() {
		return currentvisastatus;
	}
	public void setCurrentvisastatus(String currentvisastatus) {
		this.currentvisastatus = currentvisastatus;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}
}

