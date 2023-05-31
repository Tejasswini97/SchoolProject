package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class FacultyAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ResultSet rs = null;
	StudentBean bean = null;
	List<StudentBean> beanList = null;
	StudentDao student = new StudentDao();
	private boolean noData = false;
	
	public String execute() throws Exception {
		try {
			beanList = new ArrayList<>();
			rs = student.viewFaculty();
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new StudentBean();
					bean.setFname(rs.getString("fname"));
					bean.setExperience(rs.getString("experience"));
					bean.setSubject(rs.getString("subject"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Faculty";
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

