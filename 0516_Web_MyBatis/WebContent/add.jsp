<%@page import="com.hb.mybatis.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<jsp:useBean id="vo" class="com.hb.mybatis.VO" />
<jsp:setProperty property="*" name="vo"/>
<%
	WebApplicationContext context =
	WebApplicationContextUtils.getWebApplicationContext(application);
    DAO dao = (DAO)context.getBean("dao");
    dao.getInsert(vo);
    response.sendRedirect("list.jsp");
%>