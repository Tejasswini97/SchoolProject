package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAdmission extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ResultSet rs = null;
	StudentBean bean = null;
	List<StudentBean> beanList = null;
	StudentDao student = new StudentDao();
	
	
	public String execute() throws Exception {
		try {
			beanList = new ArrayList<>();
			rs = student.viewAdmission();
			
			if (rs != null) {
				while (rs.next()) {
					
					bean = new StudentBean();
					bean.setSname(rs.getString("sname"));
					bean.setDob(rs.getString("dob"));
					bean.setStandard(rs.getString("standard"));
					beanList.add(bean);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "VIEW ADMISSION";
	}

	

	public List<StudentBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<StudentBean> beanList) {
		this.beanList = beanList;
	}

}
