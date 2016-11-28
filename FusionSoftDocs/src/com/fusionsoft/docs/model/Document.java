package com.fusionsoft.docs.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name = "documents")
public class Document {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "docid", unique = true, nullable = false)
	private int docid;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USERID", nullable = false)
	private CustomUser customuser;
	@Column(name = "doctitle")
	private String doctitle;
	@Column(name = "keywords")
	private String keywords;
	@Lob
	@Column(name = "attachment")
	private byte[] attachment;
	@Column(name = "doctype")
	private String doctype;
	@Column(name = "createdby")
	private String createdby;
	@Temporal(TemporalType.DATE)
	@Column(name = "date")
	private Date date;
	@Column(name ="lastmodifiedby")
	private String lastmodifiedby;
	@Temporal(TemporalType.DATE)
	@Column(name ="lastmodifieddate")
	private Date lastmodifieddate;
	@Column(name ="status")
	private int status;
	@Column(name = "verfied")
	private boolean verified;
	@Column(name = "verifiedby")
	private String verifiedby;
	@Temporal(TemporalType.DATE)
	@Column(name = "verifieddate")
	private Date verifieddate;
	@Column(name ="usernotes")
	private String usernotes;
	@Column(name ="adminnotes")
	private String adminnotes;
	@Column(name = "docformat")
	private String docformat;
	public Date getVerifieddate() {
		return verifieddate;
	}
	public void setVerifieddate(Date verifieddate) {
		this.verifieddate = verifieddate;
	}
	public String getDocformat() {
		return docformat;
	}
	public void setDocformat(String docformat) {
		this.docformat = docformat;
	}
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}
	public int getDocid() {
		return docid;
	}
	public void setDocid(int docid) {
		this.docid = docid;
	}
	public String getDoctitle() {
		return doctitle;
	}
	public void setDoctitle(String doctitle) {
		this.doctitle = doctitle;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public byte[] getAttachment() {
		return attachment;
	}
	public void setAttachment(byte[] attachment) {
		this.attachment = attachment;
	}
	public String getDoctype() {
		return doctype;
	}
	public void setDoctype(String doctype) {
		this.doctype = doctype;
	}
	public String getCreatedby() {
		return createdby;
	}
	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getLastmodifiedby() {
		return lastmodifiedby;
	}
	public void setLastmodifiedby(String lastmodifiedby) {
		this.lastmodifiedby = lastmodifiedby;
	}
	public Date getLastmodifieddate() {
		return lastmodifieddate;
	}
	public void setLastmodifieddate(Date lastmodifieddate) {
		this.lastmodifieddate = lastmodifieddate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public boolean isVerified() {
		return verified;
	}
	public void setVerified(boolean verified) {
		this.verified = verified;
	}
	public String getVerifiedby() {
		return verifiedby;
	}
	public void setVerifiedby(String verifiedby) {
		this.verifiedby = verifiedby;
	}
	public Date getVerifieddata() {
		return verifieddate;
	}
	public void setVerifieddata(Date verifieddata) {
		this.verifieddate = verifieddata;
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

}
