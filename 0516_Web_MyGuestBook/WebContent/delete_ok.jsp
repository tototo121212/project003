<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.hb.mybatis.DAO"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%	WebApplicationContext context = 
	WebApplicationContextUtils.getWebApplicationContext(application);
	DAO dao = (DAO) context.getBean("dao");
	request.setCharacterEncoding("utf-8");
	int result = dao.getDelete(request.getParameter("idx"));
	if (result > 0) {
		response.sendRedirect("list.jsp");
	} else {%>
	<script>
		alert("삭제 실패");
		history.go(-2);
	</script>
	<%}%>