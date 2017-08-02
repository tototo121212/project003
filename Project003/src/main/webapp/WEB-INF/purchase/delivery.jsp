<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#one_purchase_list {
		width: 1200px;
		float: left;
		height: auto;
		border: 1px solid black;
	}
	#one_purchase_list table tr th td{
		text-align: center;
		
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript">
	function one_p_list(f) {
		f.action= "one_p_list";
		f.submit();
	}
	
	$(function() {
		$(".datepicker1").datepicker({				
			dateFormat : "yy/mm/dd"
		});
		
		$(".datepicker2").datepicker({				
			dateFormat : "yy/mm/dd"
		});
	});		
</script>
</head>
<body>
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>	
		<div id="one_purchase_list">
			<table>
				<thead>
					<form method="post">
						<tr>
							<th><p>${id} 님 구매 정보 입니다.</p></th>
							<th>납기 날짜(~시작) :</th>
							<th><input type="text" name="delivery1" class="datepicker1" /></th>
							<th>납기 날짜(~까지) :</th>
							<th><input type="text" name="delivery2" class="datepicker2" /></th>
							<input type="hidden" name="p_id2" value="${id}" />
							<th><input type="button" value="검색" onclick="one_p_list(this.form)" /></th>
						</tr>
					</form>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty list}">
							<tr><td colspan="2">구매 목록이 없습니다.</td></tr>
						</c:when>
						<c:otherwise>
						<tr>
							<td colspan="7"><hr /></td>
						</tr>
					<c:forEach var="k" items="${list}" varStatus="vs" >	
						<tr>
							<td>순번:</td><td>${vs.count}</td>
						</tr>
						<tr>
							<td>아이템 :</td><td>${k.p_item}</td>
						</tr>
						<tr>	
							<td>칼라 :</td><td>${k.p_color}</td>
						</tr>
						<tr>	
							<td>수량 :</td><td>${k.p_yd}</td>
						</tr>
						<tr>
							<td>구매일 :</td><td>${k.p_day}</td>
						</tr>
						<tr>	
							<td>납기일 :</td><td>${k.p_delivery}</td>
						</tr>
						<tr>	
							<td>운송방법 :</td><td>${k.p_tran_way}</td>
						</tr>
							<tr>
							<td colspan="7"><hr /></td>
							</tr>	
						</c:forEach>
						</c:otherwise>
					</c:choose>	
				</tbody>
			</table>
		</div>
		<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
</body>
</html>