package com.hb.mybatis;

public class VO {
	private String idx,id, pwd, name, company, pone;
	
	public VO() {}

	public VO(String idx, String id, String pwd, String name, String company, String pone) {
		super();
		this.idx = idx;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.company = company;
		this.pone = pone;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPone() {
		return pone;
	}

	public void setPone(String pone) {
		this.pone = pone;
	}

	@Override
	public String toString() {
		return "VO [idx=" + idx + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", company=" + company + ", pone="
				+ pone + "]";
	}

	
	
}
