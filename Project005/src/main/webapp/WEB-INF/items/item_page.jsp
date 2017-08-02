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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
/* window.onload = function() {
	   var loginChk = document.getElementById('items');
	   loginChk.addEventListener('click', function(){   
	      url = "page02_1.jsp";
	      wr = window.open(url, "아이디검사", "width=750, height=850");
	   })
	} */
	function item_insert() {
		document.getElementById("iiiii").submit();
	}
	
	$(function() {
		/* $(".items").click(function() {
			var idx = $(this).find("input").attr("value");
			$.ajax({
				url : "Ajax/item_onelist",
				type : "get",
				data : "idx="+idx,
				dataType : "text",
				success : function(data) {
					 url = "oneitem_result";
				      wr = window.open(url, "아이템", "width=750, height=850");
				},
				error : function(){
					alert("실패");
				}			
			});
		}); */
		$(".items").click(function() {
			var queryString = $(this).closest("form").serialize();			
			$.ajax({
				url : "Ajax/item_onelist",
				type : "post",
				data : queryString,
				dataType : "text",
				success : function(data) {
					 url = "oneitem_result";
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
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>
<c:forEach var="k" items="${list}" varStatus="vs">
<form method="post" name="adad" >
<div class="items">
	<img alt="아이템" src="img/${k.img}" />
	<p>${k.name1}</p>
	<input type="hidden" name="idx" id="idx" value="${k.idx}" />	
	<input type="hidden" name="id" id="id" value="${id}" />	
</div>
</form>
</c:forEach> 
	<div>
	<c:set var="admin" value="admin" scope="page"/>
	<c:choose>
		<c:when test="${id eq admin}">
			<input type="button" value="아이템 추가" onclick="item_insert()" />
			<form  id="iiiii" action="item_insert">
			<input type="hidden" value="${id}">
			</form>
		</c:when>
	</c:choose>
	</div>
<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
</body>
</html>