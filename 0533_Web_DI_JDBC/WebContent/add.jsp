<%@page import="com.hb.am.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="vo" class="com.hb.am.VO" />
<jsp:setProperty property="*" name="vo"/>
	<%WebApplicationContext context 
		= WebApplicationContextUtils.getWebApplicationContext(application);
		DAO dao = (DAO)context.getBean("dao");	
		int res = dao.getInsert(vo);
		response.sendRedirect("list.jsp");
	%>
