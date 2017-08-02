package com.hb.am;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DAO {
	private JdbcTemplate template ;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	// DB 처리하는 메소드들
	public List<VO> getList(){
		String sql = "select * from guestbook order by idx desc";
		return template.query(sql,new RowMapper<VO>(){
			@Override
			public VO mapRow(ResultSet rs, int nownum) throws SQLException {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setEmail(rs.getString(5));
				vo.setPwd(rs.getString(6));
				vo.setRegdate(rs.getString(7));
				return vo;
			}
		});
	}
	public int getInsert(VO vo){
	  String sql = "insert into guestbook values(guestbook_seq.nextval,?,?,?,?,?,sysdate)";
      int res = template.update(sql, vo.getName(),vo.getSubject(),vo.getContent(),vo.getEmail(),vo.getPwd());
      return res ;
	}
	public List<VO> getOneList(String idx){
		String sql = "select * from guestbook where idx = ?";
		return template.query(sql,new RowMapper<VO>(){
			@Override
			public VO mapRow(ResultSet rs, int nownum) throws SQLException {
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setName(rs.getString(2));
				vo.setSubject(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setEmail(rs.getString(5));
				vo.setPwd(rs.getString(6));
				vo.setRegdate(rs.getString(7));
				return vo;
			}
		},idx);
	}
	public int getDelete(String idx){
		String sql = "delete from guestbook where idx = ? " ;
		return  template.update(sql,idx);
	}
	public int getUpdate(VO vo){
		String sql = "update guestbook set name= ?, subject=?, content=?, email =? where idx = ?" ;
		return  template.update(sql,vo.getName(),vo.getSubject(),vo.getContent(),vo.getEmail(),vo.getIdx());
		
	}
}













