package com.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.StudentBean;
import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;

public class ResultAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5005716103749920776L;
	int studentid, total;
	String studentname;
	Double percentage;
	ResultSet rs = null;
	StudentBean bean = null;
	List<StudentBean> beanList = null;
	StudentDao dao = new StudentDao();
	private boolean noData = false;

	public String execute() throws NullPointerException {
		try {
			beanList = new ArrayList<>();
			rs = dao.viewResult(studentid );
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
