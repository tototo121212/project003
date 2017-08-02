package com.hb.mybatis;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate template;

	public SqlSessionTemplate getTemplate() {
		return template;
	}

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	// 리스트 구하는 메소드
	// select문 여러개 나올경우 selectList(), 결과는 List<VO> 
	public List<VO> getList(){
		List<VO> list =  template.selectList("list");
		return list;
	}
	
	// onelist구하는 메소드 
	// select문 하나 나올 경우 selectOne(), 결과는 VO
	public VO getOneList(String idx){
		VO vo = template.selectOne("onelist", idx);
		return vo ;
	}
	
	// 회원정보 삽입하는 메소드
	public void getInsert(VO vo){
		template.insert("insert", vo);
	}
	
	// 회원정보 업데이트 메소드
	public void getUpdate(VO vo){
		template.update("update", vo);
	}
	
	// 회원정보 삭제
	public void getDelete(String idx){
		template.delete("delete", idx);
	}
}








