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
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getGraduationdate() {
		return graduationdate;
	}
	public void setGraduationdate(Date graduationdate) {
		this.graduationdate = graduationdate;
	}
	public String getGrade() {
		return gpa;
	}
	public void setGrade(String grade) {
		this.gpa = grade;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	@Temporal(TemporalType.DATE)
	@Column(name = "startdate")
private Date startdate;
	@Temporal(TemporalType.DATE)
	@Column(name = "graduationdate")
private Date graduationdate;
	@Column(name = "gpa")
private String gpa;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "USERID", nullable = false)
private Profile profile;
}
