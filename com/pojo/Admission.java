package com.pojo;

// Generated 20 Jul, 2019 2:58:07 PM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Admission generated by hbm2java
 */
public class Admission implements java.io.Serializable {

	private int addid;
	private String fname;
	private String lname;
	private String email;
	private String contact;
	private String internship;
	private String batchcode;
	private String batchtime;
	private int totalfees;
	private int finst;
	private String admdate;
	private String photo;
	private Set feeses = new HashSet(0);

	public Admission() {
	}

	public Admission(int addid, String fname, String lname, String email, String contact, String internship,
			String batchcode, String batchtime, int totalfees, int finst, String admdate, String photo) {
		this.addid = addid;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contact = contact;
		this.internship = internship;
		this.batchcode = batchcode;
		this.batchtime = batchtime;
		this.totalfees = totalfees;
		this.finst = finst;
		this.admdate = admdate;
		this.photo = photo;
	}

	public Admission(int addid, String fname, String lname, String email, String contact, String internship,
			String batchcode, String batchtime, int totalfees, int finst, String admdate, String photo, Set feeses) {
		this.addid = addid;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contact = contact;
		this.internship = internship;
		this.batchcode = batchcode;
		this.batchtime = batchtime;
		this.totalfees = totalfees;
		this.finst = finst;
		this.admdate = admdate;
		this.photo = photo;
		this.feeses = feeses;
	}

	public int getAddid() {
		return this.addid;
	}

	public void setAddid(int addid) {
		this.addid = addid;
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

	public String getInternship() {
		return this.internship;
	}

	public void setInternship(String internship) {
		this.internship = internship;
	}

	public String getBatchcode() {
		return this.batchcode;
	}

	public void setBatchcode(String batchcode) {
		this.batchcode = batchcode;
	}

	public String getBatchtime() {
		return this.batchtime;
	}

	public void setBatchtime(String batchtime) {
		this.batchtime = batchtime;
	}

	public int getTotalfees() {
		return this.totalfees;
	}

	public void setTotalfees(int totalfees) {
		this.totalfees = totalfees;
	}

	public int getFinst() {
		return this.finst;
	}

	public void setFinst(int finst) {
		this.finst = finst;
	}

	public String getAdmdate() {
		return this.admdate;
	}

	public void setAdmdate(String admdate) {
		this.admdate = admdate;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Set getFeeses() {
		return this.feeses;
	}

	public void setFeeses(Set feeses) {
		this.feeses = feeses;
	}

}
