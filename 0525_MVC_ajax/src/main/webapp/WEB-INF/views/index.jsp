<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn1").click(function() {
			$.ajax({
				url : "/sample/hello",
				type : "post",
				dataType : "text",
				success :function(data){
					$('#res').append(data);
				},
				error : function() {
					alert('읽기 실패');
				}
			});
		});
		$("#btn2").click(function() {
			$.ajax({
				url : "/sample/weater",
				type : "post",
				dataType : "text",
				success :function(data){
					$('#res').append(data);
				},
				error : function() {
					alert('읽기 실패');
				}
			});
		});
	});
</script>
</head>
<body>
	<h1> Ajax 예제</h1>
	<hr />
	<h2>
		<button id="btn1"> 텍스트 </button>
		<button id="btn2"> json </button>
		<hr />
		<div id="res"></div>
	</h2>
</body>
</html>