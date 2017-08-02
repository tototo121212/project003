<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.brands{
		float: left;
		width: 250px;
		text-align: center;
		
	}
	.brands img{
		width: 150px;
		height: 150px;
	}	
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<c:forEach var="k" items="${brand}">
		<a href="${k.link}" target="blank" >
		<div class="brands">
			<img alt="브랜드" src="brandimg/${k.b_img}">
			<p>${k.b_name}</p>
			<input type="hidden" value="${k.idx}" />
		</div>
		</a>
	</c:forEach>	
</body>
</html>