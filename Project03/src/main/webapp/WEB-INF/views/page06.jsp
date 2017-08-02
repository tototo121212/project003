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
<script type="text/javascript" src="/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function update_ok(f) {
		f.action="/project3/MyController10";
		f.submit();		
	}
	
	function delete_ok(f) {
	}
</script>
</head>
<body>
	<div>
		<form method="post">
		<table id="aaaa">
			<thead>
				
			</thead>
			<tbody>
				<tr><td style="background-color: black; color: white;">제목</td><td><input type="text" name="c_subject" placeholder="${cvo.c_subject}" /></td></tr>
				<tr><td style="background-color: black; color: white;">브랜드</td><td><input type="text" name="c_brand" placeholder="${cvo.c_brand}"  /></td></tr>
				<tr><td style="background-color: black; color: white;">직원</td><td><input type="text" name="c_employee" placeholder="${cvo.c_employee}" /></td></tr>
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

</body>
</html>