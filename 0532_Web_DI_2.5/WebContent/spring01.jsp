<%@page import="com.hb.am.HelloImp"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	WebApplicationContext context =
  	WebApplicationContextUtils.getWebApplicationContext(application);
    HelloImp hello = (HelloImp)context.getBean("hello");
	String msg = hello.sayHello();
	out.println("<h2>"+msg +"</h2>");
	%>
</body>
</html>