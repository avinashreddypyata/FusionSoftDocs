package com.fusionsoft.docs.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.springframework.web.multipart.MultipartFile;

@Entity()
@Table(name = "passport")
public class Passport {
	@Id
	@Column(name="userid", unique=true, nullable=false)
	@GeneratedValue(generator="gen")
	@GenericGenerator(name="gen", strategy="foreign", parameters={@Parameter(name="property", value="customuser")})
	private int userid;
	@Transient
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}
	@Column(name = "documentdescription")
	private String documentdescription;
	@Column(name = "documenttitle")
	private String documenttitle;
	public String getDocumenttitle() {
		return documenttitle;
	}
	public void setDocumenttitle(String documenttitle) {
		this.documenttitle = documenttitle;
	}
	public String getDocumentdescription() {
		return documentdescription;
	}
	public void setDocumentdescription(String documentdescription) {
		this.documentdescription = documentdescription;
	}
	@Column(name = "latestpassportnumber")
	private String latestpassportnumber;
	@Column(name = "passportissuancedate")
	@Temporal(TemporalType.DATE)
	private Date passportissuancedate;
	@Column(name = "passportexpirydate")
	@Temporal(TemporalType.DATE)
	private Date passportexpirydate;
	@Column(name = "passportissuedlocation")
	private String passportissuedlocation;
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userid")
	private CustomUser customuser;
	public String getLatestpassportnumber() {
		return latestpassportnumber;
	}
	public void setLatestpassportnumber(String latestpassportnumber) {
		this.latestpassportnumber = latestpassportnumber;
	}
	public Date getPassportissuancedate() {
		return passportissuancedate;
	}
	public void setPassportissuancedate(Date passportissuancedate) {
		this.passportissuancedate = passportissuancedate;
	}
	public Date getPassportexpirydate() {
		return passportexpirydate;
	}
	public void setPassportexpirydate(Date passportexpirydate) {
		this.passportexpirydate = passportexpirydate;
	}
	public String getPassportissuedlocation() {
		return passportissuedlocation;
	}
	public void setPassportissuedlocation(String passportissuedlocation) {
		this.passportissuedlocation = passportissuedlocation;
	}

}
