<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		text-align: center;
	}
	#info{
		width: 100%;
		height: 100%;
		margin: auto;
		float: center;
	}
	#info table tr,th,td{
	border: 1px solid black;
	padding: 20px;
	text-align: center;
	}
	#info img{
	width: 350px;
	height: 200px;
	}	
</style>
</head>
<body>
	<div id="info">
		<table>
			<thead>
				<tr style="background-color: black; color: white;" >
					<th colspan="2">
						아이템 정보
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2"><img alt="이미지1" src="img2/${ivo.img}"></td>
				</tr>
				<tr>
					<td>ITEM Number</td>
					<td>${ivo.name1}</td>
				</tr>
				<tr>
					<td>ITEM Name</td>
					<td>${ivo.name2}</td>
				</tr>
				<tr>
					<td>Weight</td>
					<td>${ivo.weight}</td>
				</tr>
				<tr>
					<td>PLT</td>
					<td>${ivo.product}</td>
				</tr>
				<tr>
					<td>Content of production</td>
					<td>${ivo.content}</td>
				</tr>
			</tbody>
		</table>
	</div>	
</body>
</html>