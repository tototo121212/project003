<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function del_go(f){
		var pwd1 = f.pwd.value ;
		var pwd2 = "${vo.pwd}";
		if(pwd1 != pwd2){
			alert("비번틀림");
			f.pwd.value="";
			f.pwd.focus();
			return;
		}else{
			var chk = confirm("정말 삭제할까요?");
			if(chk){
				f.action="delete_ok.hb";
				f.submit();
			}else{
				f.pwd.value="";
				f.pwd.focus();
				return;
			}
		}
	}
</script>
</head>
<body>
	<div align="center">
		<h2>방명록 : 삭제화면</h2>
		<hr />
		<p>[<a href="/">목록으로 이동</a>]</p>
		<form method="post">
			<table>
				<tr align="left">
					<td bgcolor="#99ccff">비밀번호</td>
					<td> <input type="password" name="pwd" size="20"/>
					    <input type="button" value="삭제" 
					    onclick="del_go(this.form)" />
					    <input type="hidden" name="idx" value="${vo.idx}" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>