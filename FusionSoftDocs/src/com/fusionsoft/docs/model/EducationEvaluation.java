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
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
@Entity
@Table(name = "educationevaluation")
public class EducationEvaluation {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="educationevaluation_pk")
	private int educationevaluationid;
	public int getEducationevaluationid() {
		return educationevaluationid;
	}
	public void setEducationevaluationid(int educationevaluationid) {
		this.educationevaluationid = educationevaluationid;
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
	public List<Applicant> getApplicants() {
		return applicants;
	}
	public void setApplicants(List<Applicant> applicants) {
		this.applicants = applicants;
	}
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}
	@Column(name = "name")
	private String name;
	@Column(name = "email")
	private String email;
	@Column(name = "phonenumber")
	private String phonenumber;
	@Column(name = "company")
	private String company;
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "educationevaluation")
	private List<Applicant> applicants;
	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userid")
	private CustomUser customuser;
}
