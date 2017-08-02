<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>로그인</title>
<style type="text/css">
	*{magin: 0; padding: 0}
	body{
	background-image: url("img/page17.jpg");
	}
	img{border: none; vertical-align: top;}
	li img{width: 600px; height: 600px;}
	li{list-style: none;float: left;width: 600px;}
	#banner_wrap{width: 700px; padding: 20px;
				margin: 0 auto ; border: 1px solid none;}
	#banner{width: 500000px;}	
	#frame{width: 600px ;overflow: hidden;
			position: relative; margin: 10px auto;}		
	table {height: 300px; width:300px; margin: auto;}
	table,th,td{ height: 20px; color: white; }
	
</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
window.onload = function() {
	   var loginChk = document.getElementById('join');
	   loginChk.addEventListener('click', function(){   
	      url = "neu_registrieren.jsp";
	      wr = window.open(url, "아이디검사", "width=750, height=850");
	   })
	}
	$(function() {
		$("#login").click(function() {
			$.ajax({
				url : "/login_go",
				type : "get",
				data : $("#myform").serialize(),
				datatype : "text",
				success : function(data) {
					var value = data.trim();
					//alert(/.(\w){3}/g.test(data));
					 if(value == "yes"){
						
						alert("로그인 성공");
						location.href = "page01.jsp";
					}else{
						alert("로그인 실패 "+data);
						
					}	 		
				},
				error : function(data) {
					alert("로그인 완망 "+data);
				
					location.href = "login.jsp"
				}
			});
		});	
	});
	
	function neu() {
		location.href="neu_registrieren.jsp";
	}
	
	
	$(function show() {
		var list = $("#banner");
		var num = 0;
		var show_num = 1 ;
		var total = $("li",list).length;
		var li_width = $("li:first",list).width();
			
		var copyObj = $(">li:lt("+show_num+")",list).clone();
		list.append(copyObj);
		});		
	
</script>
</head>
<body>
	<h2 align="center" style="color: white;"> 한빛 무역에 오신걸 환영합니다. </h2>
	<div id="banner_wrap">
		<div id="frame">
			<div id="banner">
				<li><a href="#"><img  src="img/back1.jpg"></a></li>
				<li><a href="#"><img  src="img/back2.jpg"></a></li>
				<li><a href="#"><img  src="img/back3.jpg"></a></li>
				<li><a href="#"><img  src="img/back4.jpg"></a></li>
				<li><a href="#"><img  src="img/back5.jpg"></a></li>
			</div>
		</div>
	</div>
	<div>	
		<form name="myform" method="post" id="myform">	
				<table>
					<tbody>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id" /></td>
						</tr>
						<tr>
							<td>패스워드</td>
							<td><input type="password" name="pwd" /></td>
						</tr>				
					</tbody>
					<tfoot>
						<tr align="center">
							<td colspan="2">
								<input type="button" id="login" value="로그인" />&nbsp;&nbsp;
								<input type="reset" value="취소" />&nbsp;&nbsp;
								<input type="button" value="회원가입" id="join" />&nbsp;&nbsp;</td>
						</tr>
					</tfoot>
				</table> 
		</form>		
	</div>
</body>
</html>