package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class TopperAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
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
			rs = student.viewToppers(studentid,studentname, total);
			
			if (rs != null) {
				while (rs.next()) {
					
					bean = new StudentBean();
					bean.setStudentid(rs.getInt("studentid"));
					bean.setStudentname(rs.getString("studentname"));
					bean.setTotal(rs.getInt("total"));
					beanList.add(bean);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "TOPPERS";
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
