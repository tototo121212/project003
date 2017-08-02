<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#aaaa tr,th,td{
		border: 1px solid black;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	function update_ok(f) {
		f.action="update_ok";
		f.submit();		
	}
	
	function delete_ok(f) {
	}
</script>
</head>
<body>
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>
	<div>
		<form method="post">
		<table id="aaaa">
			<thead>
				
			</thead>
			<tbody>
				<tr><td style="background-color: black; color: white;">제목</td><td><input type="text" name="c_subject" placeholder="${cvo.c_subject}" /></td></tr>
				<tr><td style="background-color: black; color: white;">브랜드</td><td><input type="text" name="c_brand" placeholder="${cvo.c_brand}"  /></td></tr>
				<tr><td style="background-color: black; color: white;">직원</td>
				<td><select name="c_employee">				
					    	<option value="최이사" selected="selected">김과장</option>
					    	<option value="김차장" selected="selected">최과장</option>
					    	<option value="오과장" selected="selected">회사원</option>
					    	<option value="박대리" selected="selected">박대리</option>
							<option value="군사원" selected="selected">군사원</option>
							<option value="구인턴" selected="selected">구인턴</option>
							<option value="신인턴" selected="selected">신인턴</option>
						</select></td></tr>
				<tr><td colspan="2"><textarea rows="10" cols="70" id="c_content" name="c_content" placeholder="${cvo.c_content}"></textarea></td></tr>
			</tbody>
			<tfoot>
				<tr>
				<td colspan="2">
					<input type="button" value="수정하기" onclick="update_ok(this.form)" />
					<input type="reset" value="취소하기" onclick="reset_ok()" />
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