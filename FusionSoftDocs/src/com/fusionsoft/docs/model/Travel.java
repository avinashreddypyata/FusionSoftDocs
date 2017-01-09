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
@Table(name ="travel")
public class Travel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "travelId", unique = true, nullable = false)
	private int travelid;
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "travel")
	private List<Document> documents;
	public List<Document> getDocuments() {
		return documents;
	}
	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USERID", nullable = false)
	private CustomUser customuser;
	@Column(name = "currententry")
	private String currententry;
	public String getCurrententry() {
		return currententry;
	}
	public void setCurrententry(String currententry) {
		this.currententry = currententry;
	}
	@Column(name = "portofentry")
	private String portofentry;
	@Column(name = "entrydatetous")
	@Temporal(TemporalType.DATE)
	private Date entrydatetous;
	@Temporal(TemporalType.DATE)
	@Column(name ="exitdatefromus")
	private Date exitdatefromus;
	@Column(name ="statusattimeofentry")
	private String statusattimeofentry;
	@Column(name = "statusvalidfrom")
	@Temporal(TemporalType.DATE)
	private Date statusvalidfrom;
	@Column(name = "statusvalidtill")
	@Temporal(TemporalType.DATE)
	private Date statusvalidtill;
	@Column(name ="totalmonthsoutsideus")
	private String totalmonthsoutsideus;
	@Transient
	MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	@Column(name = "documentdescription")
	private String documentdescription;
	public String getDocumentdescription() {
		return documentdescription;
	}
	public void setDocumentdescription(String documentdescription) {
		this.documentdescription = documentdescription;
	}
	public int getTravelid() {
		return travelid;
	}
	public void setTravelid(int travelid) {
		this.travelid = travelid;
	}
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}
	public String getPortofentry() {
		return portofentry;
	}
	public void setPortofentry(String portofentry) {
		this.portofentry = portofentry;
	}
	public Date getEntrydatetous() {
		return entrydatetous;
	}
	public void setEntrydatetous(Date entrydatetous) {
		this.entrydatetous = entrydatetous;
	}
	public Date getExitdatefromus() {
		return exitdatefromus;
	}
	public void setExitdatefromus(Date Exitdatefromus) {
		this.exitdatefromus = Exitdatefromus;
	}
	public String getStatusattimeofentry() {
		return statusattimeofentry;
	}
	public void setStatusattimeofentry(String statusattimeofentry) {
		this.statusattimeofentry = statusattimeofentry;
	}
	public Date getStatusvalidfrom() {
		return statusvalidfrom;
	}
	public void setStatusvalidfrom(Date statusvalidfrom) {
		this.statusvalidfrom = statusvalidfrom;
	}
	public Date getStatusvalidtill() {
		return statusvalidtill;
	}
	public void setStatusvalidtill(Date statusvalidtill) {
		this.statusvalidtill = statusvalidtill;
	}
	public String getTotalmonthsoutsideus() {
		return totalmonthsoutsideus;
	}
	public void setTotalmonthsoutsideus(String totalmonthsoutsideus) {
		this.totalmonthsoutsideus = totalmonthsoutsideus;
	}
	
}
