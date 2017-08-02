<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
<style type="text/css">
	a {text-decoration: none;}
</style>
</head>
<body>
	  <div align="center">
	  		<h2>방명록</h2>
	  		<hr />
	  		<p>[<a href="write.hb">방명록 쓰기</a>]</p>
	  		<table width="500px" cellpadding="5" cellspacing="0" border="1">
	  			<thead>
	  				<tr bgcolor="#99ccff">
	  					<th>번호</th>
	  					<th>작성자</th>
	  					<th>제목</th>
	  					<th>작성일</th>
	  				</tr>
	  			</thead>
	  			<tbody align="center">
	  			 	<c:choose>
	  			 		<c:when test="${empty list}">
	  			 			<tr><td colspan="4"><h2>등록된 정보가 존재하지 않습니다.</h2></td></tr>
	  			 		</c:when>
	  			 		<c:otherwise>
	  			 			<c:forEach items="${list }" var="k">
	  			 				<tr>
	  			 					<td>${k.idx }</td>
	  			 					<td>${k.name }</td>
	  			 					<td><a href="onelist.hb?idx=${k.idx}">${k.subject }</a></td>
	  			 					<td>${k.regdate.substring(0,10) }</td>
	  			 				</tr>
	  			 			</c:forEach>	  			 		
	  			 		</c:otherwise>
	  			 	
	  			 	</c:choose>
	  			</tbody>
	  		</table>
	  </div>
</body>
</html>







