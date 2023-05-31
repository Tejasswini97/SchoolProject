package com.action;

import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class AdmissionAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String sname, dob, standard;
	private String msg = "";
	StudentDao student = null;
	int ctr = 0;

	public String execute() throws Exception {
		student = new StudentDao();

		try {
			ctr = student.newAdmission(sname, dob, standard);
			if (ctr > 0) {
				msg = "Details inserted Successfull";
			} else {
				msg = "Please enter the valid details";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ADMISSION";
	}

	
	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
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

	

}
