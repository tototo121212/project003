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
$(function() {
	$(".find_items").click(function() {
		var p_item = $(this).find("input").attr("value");
		$.ajax({
			url : "Ajax/find_item_name",
			type : "get",
			data : "p_item="+p_item,
			dataType : "text",
			success : function(data) {
				 url = "purchase_go";
				 window.opener.location.reload(true);
			     window.close();
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
	<c:forEach var="k" items="${list}" varStatus="vs">
<form method="post">
	<div class="find_items" >
			<img alt="아이템" src="img/${k.img}" />
			<p>${k.name1}</p>
			<input type="hidden" value="${k.name1}" />	
			</div>
	</form>		
</c:forEach>
</body>
</html>