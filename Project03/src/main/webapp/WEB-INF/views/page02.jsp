<%@page import="com.hb.mybatis.IVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.items{
		float: left;
		width: 300px;
		margin-right: 1px;
		text-align: center;
	}
	.items img{
		width: 280px;
		height: 280px;
	}
</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/* window.onload = function() {
	   var loginChk = document.getElementById('items');
	   loginChk.addEventListener('click', function(){   
	      url = "page02_1.jsp";
	      wr = window.open(url, "아이디검사", "width=750, height=850");
	   })
	} */
	$(function() {
		$(".items").click(function() {
			var idx = $(this).find("input").attr("value");
			$.ajax({
				url : "/project3/MyController05",
				type : "get",
				data : "idx="+idx,
				dataType : "text",
				success : function(data) {
					 url = "page02_1.jsp";
				      wr = window.open(url, "아이템", "width=750, height=850");
				},
				error : function(){
					alert("실패");
				}			
			});
		});
	});
</script>
</head>
<body>
<%-- <jsp:include page="menubar.jsp" /> --%>
<c:forEach var="k" items="${list}" varStatus="vs">
<form>
<div class="items">
	<img alt="아이템" src="img2/${k.img}" />
	<p>${k.name1}</p>
	<input type="hidden" value="${k.idx}" />		
</div>
</form>
</c:forEach> 
<%-- <jsp:include page="footbar.jsp" /> --%>
</body>
</html>