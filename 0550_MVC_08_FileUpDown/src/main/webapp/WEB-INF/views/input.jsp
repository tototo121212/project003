<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function f_up(f) {
		f.action = "f_up.do";
		f.submit();
	}

</script>
</head>
<body>
	<form method="post" enctype="multipart/form-data">
		<p>올린사람 : <input type="text" name="name" /></p>
		<p>파일 : <input type="file" name="f_name" /></p>
		<input type="button" value="업로드" onclick="f_up(this.form)" />
	</form>
</body>
</html>