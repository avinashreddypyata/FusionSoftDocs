package com.fusionsoft.docs.model;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name = "attorney")
public class Attorney {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="attorney_pk")
	private int attorneyid;
	@Column(name = "name")
	private String name;
	@Column(name = "email")
	private String email;
	@Column(name = "phonenumber")
	private String phonenumber;
	@Column(name = "company")
	private String company;
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "attorney")
	private List<Applicant> applicants;
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userid")
	private CustomUser customuser;	
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}
	public List<Applicant> getApplicants() {
		return applicants;
	}
	public void setApplicants(List<Applicant> applicants) {
		this.applicants = applicants;
	}
	public int getAttorneyid() {
		return attorneyid;
	}
	public void setAttorneyid(int attorneyid) {
		this.attorneyid = attorneyid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
}
