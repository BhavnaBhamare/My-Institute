package com.pojo;

// Generated 20 Jul, 2019 2:58:07 PM by Hibernate Tools 3.4.0.CR1

/**
 * Enquiry generated by hbm2java
 */
public class Enquiry implements java.io.Serializable {

	private Integer enqid;
	private String fname;
	private String lname;
	private String email;
	private String contact;
	private String photo;
	private String graduation;
	private Integer yearofpass;
	private String internship;

	public Enquiry() {
	}

	public Enquiry(String fname, String lname, String email, String contact, String photo, String graduation,
			Integer yearofpass, String internship) {
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contact = contact;
		this.photo = photo;
		this.graduation = graduation;
		this.yearofpass = yearofpass;
		this.internship = internship;
	}

	public Integer getEnqid() {
		return this.enqid;
	}

	public void setEnqid(Integer enqid) {
		this.enqid = enqid;
	}

	public String getFname() {
		return this.fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return this.lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getGraduation() {
		return this.graduation;
	}

	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}

	public Integer getYearofpass() {
		return this.yearofpass;
	}

	public void setYearofpass(Integer yearofpass) {
		this.yearofpass = yearofpass;
	}

	public String getInternship() {
		return this.internship;
	}

	public void setInternship(String internship) {
		this.internship = internship;
	}

}