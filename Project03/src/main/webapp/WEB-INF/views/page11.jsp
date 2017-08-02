<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
 #screen{
 	width:390px;
 	float: left;
	border: 1px solid black;
	
 }
 #setscreen{
 	width:390px;
 	float: left;
 	border: 1px solid black;
 }
</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() {
			$("#setitem").click(function() {
				$.ajax({
					url : "/project3/MyController15",
					type : "get",
					data:$("#setform").serialize(),
					dataType : "text",
					success : function(data) {
						window.location.reload(true);
						alert("입력되었습니다.");
					},
					error : function() {
						alert("입력이 실패 하였습니다.");
					}
					
				});
			});
	});	
</script>
</head>
<body>
	<div id="screen">
		<form method="post" id="insert_setform">
			<table>
				<tbody>
				<c:choose>	
					<c:when test="${empty list}">
					 	<tr><td colspan="5">입력된 아이템이 없습니다.</td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>			
								<td>${k.p_item}</td>
								<td>${k.p_color}</td>
								<td>${k.p_yd}</td>
								<td>${k.p_delivery}</td>
								<td>${k.p_tran_way}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>					
				</tbody>	
			</table>
		</form>
	</div>
	<div id="setscreen">	
		<form method="post" id="setform" >
		<table>
			<thead>
				<tr>
					<th colspan="2">
						<h2>구매창</h2>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>아이템</td>
					<td><input type="text" name="p_item" /></td>
					<td><input type="button" id="find_go" value="찾기"  /></td>
				</tr>
				<tr>
					<td>칼라</td>
					<td><input type="text" name="p_color" /></td>
				</tr>
				<tr>
					<td>수량</td>
					<td><input type="text" name="p_yd" /></td>
				</tr>
				<tr>
					<td>납기일</td>
					<td><input type="text" name="p_delivery" /></td>
				</tr>
				<tr>
					<td>운송방법</td>
					<td>
					<select name="p_tran_way">				
					    	<option value="배" selected="selected">배</option>
					    	<option value="비행기" selected="selected">비행기</option>
					    	<option value="화물" selected="selected">화물</option>
					    	</select>
					 </td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td>
						<input type="button" id="setitem" value="넣기" />
						<input type="button" value="뺴기" />
						<input type="reset" value="취소" />
							
					</td>
				</tr>
			</tfoot>			
		</table>
		</form>
	</div>	
</body>
</html>