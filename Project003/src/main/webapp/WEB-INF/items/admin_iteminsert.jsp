<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#admin_item_table tr,th,td{
		border: 1px solid black;
		padding: 20px;
		text-align: center;
	}
</style>
<script type="text/javascript">
	function admin_item_insert_ok(f) {
		f.action= "admin_item_insert_ok";
		f.submit();
	}
</script>
</head>
<body>
	<form method="post">
		<table id="admin_item_table">
			<tbody>
				<tr>
					<td style="background-color: black; color: white;">이미지파일</td><td><input type="text" name="img" ></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">이름1</td><td><input type="text" name="name1" ></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">이름2</td><td><input type="text" name="name2" ></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">무게</td><td><input type="number" name="weight" ></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">생산일짜</td><td><input type="text" name="product" ></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">원단 내용</td>
					<td><textarea rows="10" cols="70" name="content" placeholder="내용"></textarea></td>
				</tr>
			</tbody>
			<tfoot style="text-align: center;">
					<input type="button" value="만들기" onclick="admin_item_insert_ok(this.form)" />
					<input type="reset" value="취소" />
			</tfoot>
		</table>
	</form>
</body>
</html>