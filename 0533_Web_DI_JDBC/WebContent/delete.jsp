<%@page import="com.hb.am.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	WebApplicationContext context
		= WebApplicationContextUtils.getWebApplicationContext(application);
	
	DAO dao = (DAO)context.getBean("dao");
	int res = dao.getDelete(id,pwd);
	
	response.sendRedirect("list.jsp");
%>