<%@page import="com.hb.bm.MyCals"%>
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
			MyCals cals = (MyCals)context.getBean("cals");
			int a = 200, b = 100, result =0;
			
			result = cals.plus(a, b);
		
			out.println("<h2>"+result+"</h2>");
	%>
	<h2><%=a %>+<%=b %>=<%=result %></h2>
</body>
</html>