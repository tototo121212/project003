<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>로그인</title>
<style type="text/css">
	*{magin: 0; padding: 0}
	body{
	background-color:white;
	
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
	table,th,td{ height: 20px; color: black; }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<link href="js/jquery.bxslider.css" rel="stylesheet" />

<script type="text/javascript">
window.onload = function() {
	   var loginChk = document.getElementById('join');
	   loginChk.addEventListener('click', function(){   
	      url = "neu_go";
	      wr = window.open(url, "아이디검사", "width=750, height=850");
	   })
	}
	
	$(document).ready(function(){
		var slider = $('.bxslider').bxSlider({
				auto: true, mode:'fade',
			});
		var slider_01 =	$('.bxslider_01').bxSlider({
				auto: true,autoControls: true, mode:'vertical',
			});
		var slider_02 =	$('.bxslider_02').bxSlider({
				auto: true,controls:false,pagerCustom: '#bx-pager1'
			});
			// 클릭시 멈춤 현상 해결 //
			$(document).on('click','.bx-next, .bx-prev,  #bx-pager1',function() {
			slider.stopAuto();
			slider.startAuto();
			slider_01.stopAuto();
			slider_01.startAuto();
			slider_02.stopAuto();
			slider_02.startAuto();
		});	
	});
	/*$(function() {
		 $("#login").click(function() {
			$.ajax({
				url : "login_do",
				type : "get",
				data : $("#myform").serialize(),
				datatype : "html",
				success : function(data) {
					var value = data.trim();
					//alert(/.(\w){3}/g.test(data));
					 if(value == "yes"){					
						alert("로그인 성공");
						location.href = "firstpage_do";
					}else{
						alert("로그인 실패 "+data);
						
					}	 		
				},
				error : function(data) {
					alert("로그인 완망 "+data);
				
					
				}
			});
		});	 
	});*/
	
	/* function neu_go() {
		location.href="neu_go";
	} */
	
 	function login_go(f) {
		f.action = "login_do";
		f.submit();
	}
	
	/*$(function show() {
		var list = $("#banner");
		var num = 0;
		var show_num = 1 ;
		var total = $("li",list).length;
		var li_width = $("li:first",list).width();
			
		var copyObj = $(">li:lt("+show_num+")",list).clone();
		list.append(copyObj);
	});	 */	
</script>
<style type="text/css">
#s_banner_wrap {width:600px; height:600px; margin:10px 0; display: table;margin-left: auto;margin-right: auto;}
</style>
</head>
<body>
	<h2 align="center" style="color: black;"> 한빛 무역에 오신걸 환영합니다. </h2>
<!-- 	<div id="s_banner_wrap">
		<div id="frame">
			<div id="s_banner_wrap">
				<li><a href="#"><img  src="img/back1.jpg"></a></li>
				<li><a href="#"><img  src="img/back2.jpg"></a></li>
				<li><a href="#"><img  src="img/back3.jpg"></a></li>
				<li><a href="#"><img  src="img/back4.jpg"></a></li>
				<li><a href="#"><img  src="img/back5.jpg"></a></li>
			</div>
		</div>
	</div> -->
	<div id="s_banner_wrap">
	<div class="bx-wrapper" style="max-width: 100%;">
	<div class="bx-viewport" style="overflow: hidden; position: relative; height: 600px;"><ul class="bxslider_01" style="position: relative; transition-duration: 0s; transform: translate3d(0px, -300px, 0px);">
      <div><a href="#"><img  style="width: 600px; height: 600px;"  src="img/back1.jpg"></a></div>
      <div><a href="#"><img  style="width: 600px; height: 600px;" src="img/back2.jpg"></a></div>
      <div><a href="#"><img  style="width: 600px; height: 600px;" src="img/back3.jpg"></a></div>
      <div><a href="#"><img  style="width: 600px; height: 600px;" src="img/back4.jpg"></a></div>
      <div><a href="#"><img  style="width: 600px; height: 600px;" src="img/back5.jpg"></a></div>
      </ul>
</div>
	
	
	
	<div>	
		<c:choose>
			<c:when test="${res==2}">
			<p style="text-align:center; color: red; size: 50dp" >로그인 정보가 다릅니다.</p>
			</c:when>
		</c:choose>
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
								<input type="button" id="login" value="로그인" onclick="login_go(this.form)" />&nbsp;&nbsp;
								<input type="reset" value="취소" />&nbsp;&nbsp;
								<input type="button" value="회원가입" id="join" onclick="neu_go()" />&nbsp;&nbsp;</td>
						</tr>
					</tfoot>
				</table> 
		</form>		
	</div>
</body>
</html>