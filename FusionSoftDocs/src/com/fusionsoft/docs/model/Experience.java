package com.fusionsoft.docs.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.Cascade;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name = "experience")
public class Experience {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int expid;
	@Column(name = "employer")
	private String employer;
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "experience")
	private List<Document> documents;
	public List<Document> getDocuments() {
		return documents;
	}
	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}
	@Transient
	MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	@Transient
	@Column(name = "documentdescription")
	private String documentdescription;
	public String getDocumentdescription() {
		return documentdescription;
	}
	public void setDocumentdescription(String documentdescription) {
		this.documentdescription = documentdescription;
	}
	
	@Column(name = "currentjob")
	private String currentjob;
	public String getCurrentjob() {
		return currentjob;
	}
	public void setCurrentjob(String currentjob) {
		this.currentjob = currentjob;
	}
	@Temporal(TemporalType.DATE)
	@Column(name = "joineddate")
	private Date joineddate;
	@Temporal(TemporalType.DATE)
	@Column(name = "enddate")
	private Date enddate;
	@Column(name = "designation")
	private String designation;
	@Column(name = "state")
	private String state;
	@Column(name ="country")
	private String country;
	@Column(name = "city")
	private String city;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Column(name = "totalmonthsworked")
	private String totalmonthsworked;
	
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getTotalmonthsworked() {
		return totalmonthsworked;
	}
	public void setTotalmonthsworked(String totalmonthsworked) {
		this.totalmonthsworked = totalmonthsworked;
	}
	public int getExpid() {
		return expid;
	}
	public void setExpid(int expid) {
		this.expid = expid;
	}
	public String getdesignation() {
		return designation;
	}
	public void setdesignation(String designation) {
		this.designation = designation;
	}
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USERID", nullable = false)
	private CustomUser customuser;
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}
	public Date getJoineddate() {
		return joineddate;
	}
	public void setJoineddate(Date joineddate) {
		this.joineddate = joineddate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}
}
