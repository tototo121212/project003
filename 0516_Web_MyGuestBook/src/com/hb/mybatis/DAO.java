package com.hb.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate template;

	public SqlSessionTemplate getTemplate() {
		return template;
	}

	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}

	// DB처리할 메소드들
	// 리스트
	public List<VO> getList() {
		return template.selectList("list");
	}

	// 삽입
	public int getInsert(VO vo) {
		return template.insert("insert", vo);
	}

	public VO getOneList(String idx) {
		return template.selectOne("onelist", idx);
	}

	// update 처리하는 메소드
	public int getUpdate(VO vo) {
		return template.update("update", vo);
	}

	public int getDelete(String idx) {
		return template.delete("delete", idx);
	}
}
