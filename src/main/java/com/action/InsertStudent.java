package com.action;

import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class InsertStudent extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int studentid, physics, chemistry, maths, total;
	private String studentname, dob, standard, status;
	private Double percentage;
	private String msg = "";
	StudentDao student = null;
	int ctr = 0;

	public String execute() throws Exception {
		student = new StudentDao();

		try {
			ctr = student.addStudent(studentid, studentname, dob, standard, physics, chemistry, maths, total,
					percentage, status);
			if (ctr > 0) {
				msg = "Details inserted Successfull";
			} else {
				msg = "Please enter the valid details";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "STUDENT";
	}
	
	

	public int getStudentid() {
		return studentid;
	}



	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}



	public int getPhysics() {
		return physics;
	}



	public void setPhysics(int physics) {
		this.physics = physics;
	}



	public int getChemistry() {
		return chemistry;
	}



	public void setChemistry(int chemistry) {
		this.chemistry = chemistry;
	}



	public int getMaths() {
		return maths;
	}



	public void setMaths(int maths) {
		this.maths = maths;
	}



	public int getTotal() {
		return total;
	}



	public void setTotal(int total) {
		this.total = total;
	}



	public String getStudentname() {
		return studentname;
	}



	public void setStudentname(String studentname) {
		this.studentname = studentname;
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



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public Double getPercentage() {
		return percentage;
	}



	public void setPercentage(Double percentage) {
		this.percentage = percentage;
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

/*	public void validate() {
		// Add validation logic here
		if (studentid == 0 ) {
			addFieldError("studentid", "StudentId is required.");
		} else if (experience == null || experience.isEmpty()) {
			addFieldError("experience", "Experience is required.");
		} else if (subject == null || subject.isEmpty()) {
			addFieldError("subject", "Subject is required.");
		}
	}*/

}
