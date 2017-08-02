<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		text-align: center;
	}
	#upup{
		width: 100%;
		height: 100%;
		margin: auto;
		float: center;
	}
	#upup table tr,th,td{
	border: 1px solid black;
	padding: 20px;
	text-align: center;
	}	
</style>
<script type="text/javascript">
	function admin_item_update_ok(f) {
		f.action = "admin_item_update_ok";
		f.submit();
	}
</script>
</head>
<body>
<div id="upup">
		<form method="post">
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
					<td style="background-color: black; color: white;">이미지</td><td><input type="text" name="img" placeholder="${ivo.img}" /></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">ITEM Number</td>
					<td><input type="text" name="name1" placeholder="${ivo.name1}" /></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">ITEM Name</td>
					<td><input type="text" name="name2" placeholder="${ivo.name2}" /></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">Weight</td>
					<td><input type="text" name="weight" placeholder="${ivo.weight}"/></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">PLT</td>
					<td><input type="text" name="product" placeholder="${ivo.product}"  /></td>
				</tr>
				<tr>
					<td style="background-color: black; color: white;">Content of production</td>
					<td><textarea rows="7" cols="90" name="content" placeholder="내용" ></textarea></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"><input type="button" value="변경하기" onclick="admin_item_update_ok(this.form)"/>
					<input type="hidden" name="idx" value="${ivo.idx}" />
					<input type="hidden" name="id" value="${id}" /></td>
				</tr>
				
			</tfoot>
		</table>
	</div>	
	</form>
</body>
</html>