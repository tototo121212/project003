<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function send_go(f) {
		f.action = "join.do";
		f.submit();
	}
</script>
</head>
<body>
	<form method="post">
		<p>아이디 :  <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="pwd" /></p>
		<p>이름 : <input type="text" name="name" /></p>
		<p>성별 : <input type="radio" name="gender" value="남" />남자
				  <input type="radio" name="gender" value="여" />여자
		</p>
		<p>취미 : <input type="checkbox" name="hobby" value="야구" />야구 &nbsp; &nbsp;	
				<input type="checkbox" name="hobby" value="축구" />축구 &nbsp; &nbsp;
				<input type="checkbox" name="hobby" value="배구" />배구 &nbsp; &nbsp;
				<input type="checkbox" name="hobby" value="농구" />농구
		</p>
		<input type="button" value="전송하기" onclick="send_go(this.form)" />		  
	</form>
</body>
</html>