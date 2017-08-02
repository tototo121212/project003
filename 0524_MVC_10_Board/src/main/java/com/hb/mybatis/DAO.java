package com.hb.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

// DB관련된 처리하는 클래스
public class DAO {
	private SqlSessionTemplate template;
	public SqlSessionTemplate getTemplate() {
		return template;
	}
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public int getTotalCount(){
		return template.selectOne("totalCount");
	}
	
	public List<VO> getList(Map<String, Integer> map){
		return template.selectList("list", map);
	}	
	
}


















