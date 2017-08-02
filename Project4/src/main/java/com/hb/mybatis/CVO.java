package com.hb.mybatis;

public class CVO {
	private String c_idx, c_brand, c_employee, c_subject, c_content, c_data;

	public String getC_idx() {
		return c_idx;
	}

	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}

	public String getC_brand() {
		return c_brand;
	}

	public void setC_brand(String c_brand) {
		this.c_brand = c_brand;
	}

	public String getC_employee() {
		return c_employee;
	}

	public void setC_employee(String c_employee) {
		this.c_employee = c_employee;
	}

	public String getC_subject() {
		return c_subject;
	}

	public void setC_subject(String c_subject) {
		this.c_subject = c_subject;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_data() {
		return c_data;
	}

	public void setC_data(String c_data) {
		this.c_data = c_data;
	}

	@Override
	public String toString() {
		return "CVO [c_idx=" + c_idx + ", c_brand=" + c_brand + ", c_employee=" + c_employee + ", c_subject="
				+ c_subject + ", c_content=" + c_content + ", c_data=" + c_data + "]";
	}

}
