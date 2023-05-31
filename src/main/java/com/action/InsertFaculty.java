package com.action;

import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class InsertFaculty extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String fname, experience, subject;
	private String msg = "";
	StudentDao student = null;
	int ctr = 0;

	public String execute() throws Exception {
		student = new StudentDao();

		try {
			ctr = student.addFaclty(fname, experience, subject);
			if (ctr > 0) {
				msg = "Details inserted Successfull";
			} else {
				msg = "Please enter the valid details";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "INSERT";
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}

	public void validate() {
		// Add validation logic here
		if (fname == null || fname.isEmpty()) {
			addFieldError("fname", "Faculty name is required.");
		} else if (experience == null || experience.isEmpty()) {
			addFieldError("experience", "Experience is required.");
		} else if (subject == null || subject.isEmpty()) {
			addFieldError("subject", "Subject is required.");
		}
	}

}
