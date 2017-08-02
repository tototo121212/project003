<%@page import="com.hb.mybatis.VO"%>
<%@page import="com.hb.mybatis.DAO"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<% request.setCharacterEncoding("utf-8");
   String id = request.getParameter("id");
   String pwd = request.getParameter("pwd");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <jsp:include page="input.jsp" />
   <br />
   <hr />
	<%
		WebApplicationContext context =
		WebApplicationContextUtils.getWebApplicationContext(application);
	    DAO dao = (DAO)context.getBean("dao");
	    VO vo =  dao.getOneList(id, pwd);
	    pageContext.setAttribute("vo", vo);
	%>
	<div align="center">
	<h2>id와 pwd 검색 리스트</h2>
	<h3>
		<c:choose>
		 	<c:when test="${empty vo}">
		 	   <h4><li>원하는 자료가 존재하지 않습니다.</li></h4>
		 	</c:when>
		 	<c:otherwise>
				<li> ${vo.idx}&nbsp;&nbsp;
				     ${vo.id}&nbsp;&nbsp;
				     ${vo.pwd}&nbsp;&nbsp;
				     ${vo.name}&nbsp;&nbsp;
				     ${vo.age}&nbsp;&nbsp;
				     ${vo.addr}
				</li>
			</c:otherwise>
		</c:choose>
	</h3>
	</div>
</body>
</html>











