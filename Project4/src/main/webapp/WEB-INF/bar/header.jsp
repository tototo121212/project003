<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#login_menubar_div{
	
		background-color: white;
		height: 10px;
		padding: 10px;
	}
		#login_menubar{

		
	}
	
	#login_menubar ul li {
		list-style: none ;
		float: right;
		color: black;
		font-family: 나눔고딕;
		font-style: italic;
		font-size: 11px;
		margin-left: 4px;
		
	}
	header{
		text-align:center;
		/* background-image:url(img/pic02.jpg); */
		border:1px solid black;
		margin-top: 20px;
		
	}
	#main_menu {
		text-align: center;
	}
	
	#main_menu ul li{
		float: left;
		padding: 5px;
		list-style: none;
		text-align: center; 
		position: relative; 
	}

	a{
		text-decoration: none;
		
	}
	.sub_main_menu{
		border: solid 1px white;
		margin-right: -1px;
	}
	
</style>
</head>
<body>
	<div id="login_menubar_div">
			<nav id="login_menubar">
				<ul>
					<li><a href="#">회원가입</a></li>
					<li>|</li>
					<li><a href="#">로그인</a></li>
				</ul>
			</nav>
		</div>
	<header>
		<h1>유아용 </h1>
	</header>
	<nav id="main_menu">
		<ul>
			<li>33333
				<ul class="sub_main_menu">
					<li>11111</li>
				</ul>
			</li>
			<li>33333
				<ul class="sub_main_menu">
					<li>11111</li>
				</ul>
			</li>
			<li>33333
				<ul class="sub_main_menu">
					<li>11111</li>
				</ul>
			</li>
		</ul>
	</nav>
</body>
</html>