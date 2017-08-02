<%@page import="java.util.List"%>
<%@page import="com.hb.am.DAO"%>
<%@page import="com.hb.am.VO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="input.jsp" />
	<br />
	<hr />
	
	<%
		WebApplicationContext context
			 = WebApplicationContextUtils.getWebApplicationContext(application);
		DAO dao = (DAO)context.getBean("dao");
		List<VO>list = dao.getOnelist(id, pwd);
		pageContext.setAttribute("list", list);
	%>
	<div align="center">
	<h2>id와 pwd 검색 리스트</h2>
	<h3>
		<ul>
			<c:choose>
				<c:when test="${empty list}">
					<h4><li>원하는 자료가 없습니다.</li></h4>
				</c:when>
				<c:otherwise>
					<c:forEach var="k" varStatus="vs" items="${list}">
						<li>
							${k.id}&nbsp;&nbsp;
							${k.pwd}&nbsp;&nbsp;
							${k.name}&nbsp;&nbsp;
							 ${k.age}&nbsp;&nbsp;
						     ${k.addr}
						</li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</h3>
	</div>
</body>
</html>