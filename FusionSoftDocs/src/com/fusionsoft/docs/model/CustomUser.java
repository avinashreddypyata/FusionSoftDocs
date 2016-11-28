package com.fusionsoft.docs.model;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import org.hibernate.annotations.Cascade;
import org.springframework.security.core.userdetails.UserDetails;
@Entity
@Table(name = "USERS")
public class CustomUser implements UserDetails {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="USERID")
	private int userid;

	@Column(name = "USERNAME")
	private String username;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "USERSTATUS")
	private int userstatus;

	@Column(name = "USERROLE")
	private int userrole;
	@Temporal(TemporalType.DATE)
	@Column(name = "CREATEDDATE")
	private Date createddate;
    
	@Column(name = "CREATEDBY")
	private String createdby;
	
	@OneToOne(mappedBy="customuser")
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	private Profile profile;
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customuser")
	private List<Document> documents;
	@Cascade(value=org.hibernate.annotations.CascadeType.ALL)
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customuser")
	private List<Inbox> messages;
	
	public List<Inbox> getMessages() {
		return messages;
	}
	public void setMessages(List<Inbox> messages) {
		this.messages = messages;
	}
	public List<Document> getDocuments() {
		return documents;
	}
	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}
	public Profile getProfile() {
		return profile;
	}
	public void setProfile(Profile profile) {
		this.profile = profile;
	}
	/* Spring Security related fields*/
	@Transient
    private List<CustomRole> authorities;
	@Transient
    private boolean accountNonExpired = true;
	@Transient
    private boolean accountNonLocked = true;
	@Transient
    private boolean credentialsNonExpired = true;
	@Transient
    private boolean enabled = true;
	
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserstatus() {
		return userstatus;
	}
	public void setUserstatus(int userstatus) {
		this.userstatus = userstatus;
	}
	public int getUserrole() {
		return userrole;
	}
	public void setUserrole(int userrole) {
		this.userrole = userrole;
	}
	public Date getCreateddate() {
		return createddate;
	}
	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
	}
	public String getCreatedby() {
		return createdby;
	}
	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}
	public List<CustomRole> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(List<CustomRole> authorities) {
		this.authorities = authorities;
	}
	public boolean isAccountNonExpired() {
		return accountNonExpired;
	}
	public void setAccountNonExpired(boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}
	public boolean isAccountNonLocked() {
		return accountNonLocked;
	}
	public void setAccountNonLocked(boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}
	public boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}
	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}


}