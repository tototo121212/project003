<%@page import="com.hb.bm.MyCalc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		WebApplicationContext context =
		WebApplicationContextUtils.getWebApplicationContext(application);
	    MyCalc calc = (MyCalc)context.getBean("calc");
	    int a = 10 , b= 5 , result =0 ;
	    result = calc.plus(a, b);
	    out.println("<h2>결과 : "+result+"</h2>");
	%>
	<h2><%=a %> + <%=b %> = <%=result %></h2>
</body>
</html>





