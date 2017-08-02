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
/* $(function() {
	$(".find_items").click(function() {
		var p_item = $(this).find("input").attr("value");
		 $("input[name='hobby']:checked"). 
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
}); */

$(function() {
	$(".find_items").click(function() {
		var p_item = $(this).find("input[name='aaa']").attr("value");
		var p_item2 = $(this).find("input[name='bbb']").attr("value");
		var p_item4 = $(this).find("input[name='ccc']").attr("value");
		var p_item5 = $(this).find("input[name='ddd']").attr("value");
		$.ajax({
			url : "Ajax/find_item_name",
			type : "get",
			data : {p_item , p_item2 , p_item4, p_item5 },
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
			<input type="hidden" name="aaa" value="${k.name1}" />
			<input type="hidden" name="bbb" value="${k.img}" />	
			<input type="hidden" name="ccc" value="${k.yd_dan}" />
			<input type="hidden" name="ddd" value="${k.name2}" />
			</div>
	</form>		
</c:forEach>
</body>
</html>