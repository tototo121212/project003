<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>결과보기</h3>
	<h2>
		<li>아이디 : ${id}</li>
		<li>패스워드 : ${pwd}</li>
		<li>이름 : ${name}</li>
		<li>성별 : ${gender}</li>
		<li>취미 :
		<c:forEach var="k" items="${hobby}">
			${k}		
		</c:forEach>
		</li>
	</h2>
</body>
</html>