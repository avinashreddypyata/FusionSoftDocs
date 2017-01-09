package com.fusionsoft.docs.model;

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
import javax.persistence.Transient;

import org.hibernate.annotations.Cascade;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name ="certification")
public class Certification {
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CertificationId", unique = true, nullable = false)
	private int certificationId;
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "certification")
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
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USERID", nullable = false)
	private CustomUser customuser;
	
	@Column(name = "CertificationName")
	private String certificationName;
	
	@Column(name = "Specialisation")
	private String specialisation;
	
	@Column(name = "Organisation")
	private String organisation;
	
	@Column(name = "Address")
	private String address;
	
	@Column(name = "City")
	private String city;
	
	@Column(name = "State")
	private String state;
	
	@Column(name = "Zipcode")
	private String zipcode;
	
	@Column(name = "Country")
	private String country;
	
	@Column(name = "MonthOfPassing")
	private String monthOfPassing;
	
	@Column(name = "YearOfPassing")
	private String yearOfPassing;

	public int getCertificationId() {
		return certificationId;
	}

	public void setCertificationId(int certificationId) {
		this.certificationId = certificationId;
	}

	public CustomUser getCustomuser() {
		return customuser;
	}

	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}

	public String getCertificationName() {
		return certificationName;
	}

	public void setCertificationName(String certificationName) {
		this.certificationName = certificationName;
	}

	public String getSpecialisation() {
		return specialisation;
	}

	public void setSpecialisation(String specialisation) {
		this.specialisation = specialisation;
	}

	public String getOrganisation() {
		return organisation;
	}

	public void setOrganisation(String organisation) {
		this.organisation = organisation;
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getMonthOfPassing() {
		return monthOfPassing;
	}

	public void setMonthOfPassing(String monthOfPassing) {
		this.monthOfPassing = monthOfPassing;
	}

	public String getYearOfPassing() {
		return yearOfPassing;
	}

	public void setYearOfPassing(String yearOfPassing) {
		this.yearOfPassing = yearOfPassing;
	}
	

}
