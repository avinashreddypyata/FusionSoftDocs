package com.fusionsoft.docs.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name = "education")
public class Education {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eduid;
	@Column(name = "course")
    private String course;
	@Column(name = "university")
    private String university;
	@Column(name="location")
	private String location;
	@Column(name= "levelofeducation")
	private String levelofeducation;
	@Column(name ="address")
	private String address;
	@Column(name = "city")
	private String city;
	@Column(name = "state")
	private String state;
	@Column(name ="zipcode")
	private String zipcode;
	@Column(name = "country")
	private String country;
	@Column(name = "yearofpassing")
	private String yearofpassing;
	@Column(name = "monthofpassing")
	private String monthofpassing;
	@Column(name = "ussevisnumber")
	private String ussevisnumber;
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
	public String getYearofpassing() {
		return yearofpassing;
	}
	public void setYearofpassing(String yearofpassing) {
		this.yearofpassing = yearofpassing;
	}
	public String getMonthofpassing() {
		return monthofpassing;
	}
	public void setMonthofpassing(String monthofpassing) {
		this.monthofpassing = monthofpassing;
	}
	public String getUssevisnumber() {
		return ussevisnumber;
	}
	public void setUssevisnumber(String ussevisnumber) {
		this.ussevisnumber = ussevisnumber;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getEduid() {
		return eduid;
	}
	public void setEduid(int eduid) {
		this.eduid = eduid;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLevelofeducation() {
		return levelofeducation;
	}
	public void setLevelofeducation(String levelofeducation) {
		this.levelofeducation = levelofeducation;
	}
	public String getGpa() {
		return gpa;
	}
	public void setGpa(String gpa) {
		this.gpa = gpa;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getGrade() {
		return gpa;
	}
	public void setGrade(String grade) {
		this.gpa = grade;
	}
	public CustomUser getCustomuser() {
		return customuser;
	}
	public void setCustomuser(CustomUser customuser) {
		this.customuser = customuser;
	}

	@Column(name = "gpa")
private String gpa;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USERID", nullable = false)
private CustomUser customuser;
}
