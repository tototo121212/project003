<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 결과 보기 </h2>
	<h3>
		<li>아이디 : ${id }</li>
		<li>패스워드 : ${pwd} </li>
		<li>취미 : 
		     <c:forEach var="k" items="${hobby}">
		     	${k }&nbsp;&nbsp;
		     </c:forEach>
		</li>
		<hr />
		<li>아이디 : ${vo.id }</li>
		<li>패스워드 : ${vo.pwd} </li>
		<li>취미 : 
		     <c:forEach var="k" items="${vo.hobby}">
		     	${k }&nbsp;&nbsp;
		     </c:forEach>
		</li>
		<hr />
	</h3>
</body>
</html>