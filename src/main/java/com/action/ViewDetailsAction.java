package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class ViewDetailsAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1209890141367669797L;
	String studentname;
	int studentid, total;
	ResultSet rs = null;
	StudentBean bean = null;
	List<StudentBean> beanList = null;
	StudentDao student = new StudentDao();
	private boolean noData = false;

	public String execute() throws Exception {
		try {
			
			beanList = new ArrayList<>();
			rs = student.viewDetails(studentid);
			
			if (rs.next()) {
                studentid = rs.getInt("studentid");
                studentname = rs.getString("studentname");
                total = rs.getInt("total");
                
                return SUCCESS;
            } else {
                addActionError("Student result not found.");
                return ERROR;
            }    
    } catch (Exception e) {
        e.printStackTrace();
        addActionError("Error occurred while retrieving student result.");
        return ERROR;
    }
}

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public List<StudentBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<StudentBean> beanList) {
		this.beanList = beanList;
	}

}
