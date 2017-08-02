<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#onecostomer_table tr,th,td{
		border: 1px solid black;
		padding: 20px;
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function update_go(f) {
		f.action = "update_go";
		f.submit();
	}
	
	function delect_go(f) {
		f.action = "delect_go";
		f.submit();
	}
	
</script>
</head>
<body>
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>	
	<div id="onecostomer">
		<form method="post">
		<table id="onecostomer_table">
			<thead>
				<tr style="background-color: black; color: white;"><th colspan="2"><a href="costomer_list">목록으로...</a></th></tr>
				<!-- <tr style="background-color: black; color: white;"><th colspan="2" onclick="history.go(-1)">목록으로...</th></tr> -->
			</thead>
			<tbody>
				<tr><td>제목</td><td>${cvo.c_subject}</td></tr>
				<tr><td>브랜드</td><td>${cvo.c_brand}</td></tr>
				<tr><td>직원</td><td>${cvo.c_employee}</td></tr>
				<tr><td>내용</td><td>${cvo.c_content}</td></tr>
				<tr><td>날짜</td><td>${cvo.c_data}</td></tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"><input type="button" id="update" value="수정하기" onclick="update_go(this.form)" />
						<input type="button" id="delete" value="삭제하기" onclick="delect_go(this.form)" />
						<input type="hidden" name="c_idx" value="${cvo.c_idx}" />			
					</td>
				</tr>
			</tfoot>
		</table>
	</form>	
	</div>
	<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
</body>
</html>