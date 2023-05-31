package com.action;

import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;

public class ViewResultAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = -1017580369750323168L;
	private int studentId;
    private String studentName, status;
    private int total;
    private double percentage;

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public double getPercentage() {
        return percentage;
    }

    public void setPercentage(double percentage) {
        this.percentage = percentage;
    }
    

    public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String execute() {
        try {
            StudentDao studentDao = new StudentDao();
            ResultSet rs = studentDao.viewResult(studentId);
            if (rs.next()) {
                studentName = rs.getString("studentname");
                total = rs.getInt("total");
                percentage = rs.getDouble("percentage");
                status = rs.getString("status");
                return SUCCESS;
            } else {
                addActionError("No result found for the provided student ID");
                return ERROR;
            }
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("An error occurred while retrieving the result");
            return ERROR;
        }
    }

	
}
