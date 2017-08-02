<%@page import="com.hb.cm.MyProcess"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
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
		
		MyProcess myProcess = (MyProcess)context.getBean("myProcess");
		
		out.println("<h2>"+ myProcess.getName() +"</h2>");
		out.println("<h2>"+ myProcess.prn() +"</h2>");		
	%>
</body>
</html>