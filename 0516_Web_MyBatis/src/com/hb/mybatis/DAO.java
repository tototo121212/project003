package com.hb.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate template ;

	public SqlSessionTemplate getTemplate() {
		return template;
	}

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	// DB처리할 메소드들
	// 리스트
	public List<VO> getList(){
	   return  template.selectList("list");
	}
	
	// 삽입
	public void getInsert(VO vo){
		 template.insert("insert", vo);
	}
	
	public VO getOneList(String id, String pwd){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		return  template.selectOne("onelist",map);
	}
	public void getDelete(String id, String pwd){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		template.delete("delete",map);
	}
}













