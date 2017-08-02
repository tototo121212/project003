package com.hb.mybatis;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate template;

	public SqlSessionTemplate getTemplate() {
		return template;
	}

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
}
