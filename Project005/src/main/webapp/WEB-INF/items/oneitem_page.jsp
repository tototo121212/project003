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
<script type="text/javascript">
	function admin_item_update(f) {
		f.action = "admin_item_update";
		f.submit();
		/* window.locaion.close(); */
	}
</script>
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
					<td colspan="2"><img alt="이미지1" src="img/${ivo.img}"></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">ITEM Number</td>
					<td>${ivo.name1}</td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">ITEM Name</td>
					<td>${ivo.name2}</td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">Weight</td>
					<td>${ivo.weight}</td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">PLT</td>
					<td>${ivo.product}</td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">Content of production</td>
					<td>${ivo.content}</td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">price(1YD)</td>
					<td>${ivo.yd_dan}</td>
				</tr>						
			</tbody>
			<tfoot>
				<c:set var="admin" value="admin" scope="page" />
					<c:choose>
						<c:when test="${id eq admin}">
							<form method="post">								
								<tr>
									<td colspan="2">
										<input type="button" value="변경하기" onclick="admin_item_update(this.form)" />
										<input type="hidden" name="idx" value="${ivo.idx}" />
										<input type="hidden" name="id" value="${id}" />
									</td>
								</tr>
							</form>								
						</c:when>
					</c:choose>
			</tfoot>
		</table>
	</div>	
</body>
</html>