<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.hb.am.HelloImp"%>
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
	<%-- <%
		// 자바코드 그래로 사용
		ApplicationContext context
			= new GenericXmlApplicationContext("com/hb/am/di.xml");
		HelloImp hi = (HelloImp)context.getBean("hi");
		String msg = hi.sayHello();
		out.println("<h2>"+msg+"</h2>");
	%>
	<h2><%=msg %></h2> --%>
	
	<%--
		1. web에서는 설정정보(di.xml)위치가
		WEB-INF 안에 applicationContext.xml로 만들어서 사용한다.
		2. 설정정보를 읽기 위해 리스너가 필요한다.(프로젝트에 리스너는 하나만)
		(2.5이하는 web.xml를 만들어서 사용)
		(3.0이상은 자바에서 만들어서 사용)
		3.web에서는 기본적으로 ApplicationContext를 사용하지 않음
			WebApplicationContext를 사용한다.(spring-web 라이브러리 필요)
	 --%>
	 <%
	 	WebApplicationContext context = 
	 		WebApplicationContextUtils.getWebApplicationContext(application);
	 	HelloImp hi = (HelloImp)context.getBean("hi");
	 	String msg = hi.sayHello();
	 	out.println("<h2>"+msg+"</h2>");
	 %>
</body>
</html>