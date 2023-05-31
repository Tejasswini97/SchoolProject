package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class Result extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int studentid;
	private StudentDao dao;
	private StudentBean bean;
	List<StudentBean> beanList = null;
	ResultSet rs = null;
	private boolean noData = false;
    
    
   
    
    public String execute() {
    	try {
			beanList = new ArrayList<>();
			rs = dao.viewResult(studentid);
			bean.setStudentid(bean.getStudentid());
			if (rs != null) {
				while (rs.next()) {
					
					bean = new StudentBean();
					bean.setStudentid(rs.getInt("studentid"));
					bean.setStudentname(rs.getString("studentname"));
					bean.setTotal(rs.getInt("total"));
					bean.setPercentage(rs.getDouble("percentage"));
					beanList.add(bean);
				}
			}
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "VIEW";
		}
    	
    // Getter and setter methods for username and password
   
    public int getStudentid() {
		return studentid;
	}

	public void setStudentid(int studentid) {
		this.studentid = studentid;
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
    
