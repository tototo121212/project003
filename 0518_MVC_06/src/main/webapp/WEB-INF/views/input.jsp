<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table { width: 50%;  margin: auto; height: 350px}
	table, th, td {border: 1px solid black;}
	div{text-align: center; }
</style>
<script type="text/javascript">
	function allview_go(f) {
		f.action="/web";
		f.submit();
	}
	function view_go(f) {
		f.action="onelist.do";
		f.submit();
	}
	function add_go(f) {
		f.action="add.do";
		f.submit();
	}
	function del_go(f) {
		f.action="delete.do";
		f.submit();
	}
</script>
</head>
<body>
	<div>
		<form method="post">
		 <table>
			<thead>
				<tr><th colspan="2">회원 정보</th></tr>
			</thead>
			<tbody>
			   <tr>
			   		<td> 아이디 </td>
			   		<td> <input type="text" name="id" /> </td>
			   </tr>
			   <tr>
			   		<td> 패스워드 </td>
			   		<td> <input type="password" name="pwd" /> </td>
			   </tr>
			   <tr>
			   		<td> 이름 </td>
			   		<td> <input type="text" name="name" /> </td>
			   </tr>
			   <tr>
			   		<td> 나이 </td>
			   		<td> <input type="text" name="age" /> </td>
			   </tr>
			   <tr>
			   		<td> 주소 </td>
			   		<td> <input type="text" name="addr" /> </td>
			   </tr>
			</tbody>
			<tfoot>
				<tr align="center">
					<td colspan="2">
							<input type="button" value="전체회원보기" onclick="allview_go(this.form)" />&nbsp; &nbsp;
							<input type="button" value="회원정보보기" onclick="view_go(this.form)" />&nbsp; &nbsp;
							<input type="button" value="회원가입" onclick="add_go(this.form)" />&nbsp; &nbsp;
							<input type="button" value="회원삭제" onclick="del_go(this.form)" />&nbsp; &nbsp;
							<input type="reset" value="취소" " />&nbsp; &nbsp;
				</tr>	
			</tfoot>
		</table>
	</form>
	</div>	
</body>
</html>