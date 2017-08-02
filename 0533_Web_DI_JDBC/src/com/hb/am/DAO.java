package com.hb.am;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DAO {
	// 객체 참조 자료형, 객체 참조 변수
	private JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	// 각 DB처리 메소드
	// 리스트
	public List<VO> getList(){
		String sql = "select * from hbmember order by idx";
		return template.query(sql, new RowMapper<VO>(){
			@Override
			public VO mapRow(ResultSet rs, int rownum) throws SQLException {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setId(rs.getString(2));
				vo.setPwd(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setAge(rs.getString(5));
				vo.setAddr(rs.getString(6));
				return vo;
			}
		});
	}
	public List<VO> getOnelist(String id, String pwd){
		String sql = "select * from hbmember where id=? and pwd=?";
		return template.query(sql, new RowMapper<VO>(){
			@Override
			public VO mapRow(ResultSet rs, int rownum) throws SQLException {
				VO vo =	new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setId(rs.getString(2));
				vo.setPwd(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setAge(rs.getString(5));
				vo.setAddr(rs.getString(6));
				return vo;
			}
		},id,pwd);
	}
	public int getInsert(VO vo){
		int res =0;
		String sql = "Insert into hbmember values(hbmember_seq.nextval,?,?,?,?,?)";
		res = template.update(sql,vo.getId(),vo.getPwd(),vo.getName(),vo.getAge(),vo.getAddr());
		return res;
	}
	public int getDelete(String id, String pwd){
		int res =0;
		String sql = "delete from hbmember where id=? and pwd=? ";
		res = template.update(sql,id,pwd);
		return res;
	}
}
