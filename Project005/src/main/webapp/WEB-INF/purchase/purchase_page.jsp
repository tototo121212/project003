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
 
 	/* susub_pu_item tr td img{
 			width: 280px;
			height: 280px;} */
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript">	
	function find_go(){
		url = "find_go";
	      wr = window.open(url, "아이템 찾기", "width=1250, height=1250");
		
		/* location.href = "find_go";
		alert("눌렀음");
		window.open(url, "아이템 찾기", "width=1250, height=1250"); */
	}
	function purchase_all() {
		$("input[name='id']")
	}
	

	$(function() {
		$("#setitem").click(function() {
			$.ajax({
				url : "Ajax/item_page",
				type : "get",
				data : $("#setform").serialize(),
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
		$(".sub_pu_item").click(function() {
			var itemsub = $(this).find("input").attr("value");
			$.ajax({
				url : "Ajax/item_sub_page",
				type : "get",
				data : "itemsub=" + itemsub,
				dataTyoe : "text",
				success : function(data) {
					alert(data + " : 뺏음");
					window.location.reload(true);
				},
				error : function() {
					alert("못 뺏음");
				}
			});
		});
		$(".datepicker").datepicker({
			minDate : 0,
			dateFormat : "yy/mm/dd"
		});
	 	/* $("#p_yd").change(function() {
			var values = document.getElementById("p_yd").value;
			var oneprice = document.getElementById("oneprice").value;
			$('#p_price').text('');
			$('#p_price').html(values * oneprice);
		});
		$("#p_item").change(function() {
			$('#p_yd').html(1);			
			var oneprice = document.getElementById("oneprice").value;
		});  */
		
		 $("#p_yd").change(function() {
			var values = document.getElementById("p_yd").value;
			var oneprice = document.getElementById("oneprice").value;
		 	document.getElementById("p_price").value = values * oneprice;
			/* $("input[name='p_price']").html(values * oneprice);  */
		});
		$("#p_item").change(function() {
			$('#p_yd').html(1);			
			var oneprice = document.getElementById("oneprice").value;
		}); 
	});
</script>
</head>
<body>
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>
	<div id="screen">
		
			<table>
			<thead>
				<tr>
					<th colspan="7">
						<h2>장바구니</h2>
					</th>
				</tr>
			</thead>
				<tbody>
				<c:choose>	
					<c:when test="${empty list}">
					 	<tr><td colspan="5">입력된 아이템이 없습니다.</td></tr>
						
					</c:when>
					<c:otherwise>
						
						<tr><td colspan="2">${id} 님 장바구니 입니다.</td></tr>
						<c:forEach var="k" items="${list}" varStatus="vs">
							
							<div>
								<tr class="sub_pu_item" style="cursor: pointer;"> <input type="hidden" value="${vs.count}" />							
									<%-- <td><img alt="사진1" src="img/${k.p_item}.jpg"></td> --%>
									<tr>
									<td>${vs.count}</td><td><input type="button" value="구매" onclick="purchase_all()" /></td>
									</tr>
									<form id="pppp" action="purchase_all">
										<input type="hidden" name="p_idx" value="${k.p_idx}" />
									</form>
									<tr>
									<td><img width="200px" height="200px" src="img/${k.p_img}"></td>
									</tr>
									<tr>
									<td>&nbsp;.&nbsp;</td>
									</tr>
									<tr>
									<td>${k.p_item1}</td>
									</tr>
									<tr>
									<td>${k.p_item2}</td>
									</tr>
									<tr>
									<td>${k.p_color}</td>
									</tr>
									<tr>
									<td>${k.p_yd}</td>
									</tr>
									<tr>
									<td>${k.p_price}</td>
									</tr>
									<tr>
									<td>${k.p_delivery}</td>
									</tr>
									<tr>
									<td>${k.p_tran_way}</td>
									</tr>
									<tr>
									<td>${k.p_day}</td>	
									</tr>																
								<hr />
							</div>	
							
						</c:forEach>
							<input type="button" value="구매하기" onclick="purchase_all()" />
							
					</c:otherwise>
				</c:choose>					
				</tbody>	
			</table>
		
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
					<c:choose>
						<c:when test="${empty p_item3}">	
							
						</c:when>
						<c:otherwise>
							<td colspan="2">
								<img alt="이미지" width="300px" height="300px" src="img/${p_item3}" />
							</td>
						</c:otherwise>
					</c:choose>	
					</tr>
					<tr>	
					<c:choose>
						<c:when test="${empty p_item2}">
							<td>아이템</td>		<td><input type="text" name="p_item1" />	</td>
									
						</c:when>
						<c:otherwise>
							<td>아이템</td>		<td><input type="text" id="p_item1" name="p_item1" value="${p_item2}" /></td>
						</c:otherwise>
					</c:choose>
					<td><input type="button" id="find" name="find" value="찾기" onclick="find_go()" /></td>		
					</tr>
					<tr>			
					<td>칼라</td>
					<td><input type="text" id="p_color" name="p_color" /></td>
				</tr>
				<tr>
					<td>수량</td>
					<td><input type="number" name="p_yd" id="p_yd" value="1" step="1" min="1" max="100"/></td>
				</tr>
				<tr>					
					<td>단위가격</td>
					<td><input type="number" id="oneprice" value="${p_item4}" /></td>
				</tr>
				<tr>
					<td>전체가격</td>
				<%-- 	 <td><span id="p_price">${p_item4}</span></td>  --%>
					<td><input id="p_price" name="p_price" value="${p_item4}"/></td>  

				</tr>
				<tr>
					<td>납기일</td>
					<td><input type="text" name="p_delivery" class="datepicker" /></td>
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
						<input type="hidden" name="p_img" value="${p_item3}" />
						<input type="hidden" name="p_item2" value="${p_item5}" />  
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td>
						<input type="button" id="setitem" value="넣기" />
					</td>
				</tr>
			</tfoot>			
		</table>
		</form>
	</div>	
	<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
</body>
</html>