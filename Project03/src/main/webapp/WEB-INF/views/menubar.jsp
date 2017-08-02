<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	     #jb-header {
        padding: 20px;
        border: 1px solid white;
      	background-color: black;
      	color: white;
      }
      #topMenu {
            height: 30px;  
            width: 100%;  
    }
    #topMenu ul {           /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */
        list-style-type: none;  
        margin: auto;            
        padding: 0px;           
    }
    #topMenu ul li {            /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
        color: white;               
        background-color: black;  
        float: left;                
        line-height: 30px;          
        vertical-align: middle;     
        text-align: center;         
        position: relative;         
    }
    .menuLink, .submenuLink {           /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
        text-decoration:none;               
        display: block;                     
        width: 200px;                       
        font-size: 12px;                    
        font-weight: bold;                  
        font-family: "Trebuchet MS", Dotum; 
    }
    .menuLink {     /* 상위 메뉴의 글씨색을 흰색으로 설정 */
        color: white;
    }
    .topMenuLi:hover .menuLink {    /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
        color: red;                 
        background-color: #4d4d4d;  
    }
    .longLink {     /* 좀 더 긴 메뉴 스타일 설정 */
        width: 100px;   
    }
    .submenuLink {          /* 하위 메뉴의 a 태그 스타일 설정 */
        color: black;             
        background-color: white;    
        border: solid 1px black;    
        margin-right: -1px;         /* [변경] 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */
    }
    .submenu {              /* 하위 메뉴 스타일 설정 */
        position: absolute;     
        height: 0px;            
        overflow: hidden;       
        transition: height .2s; 
        -webkit-transition: height .2s; 
        -moz-transition: height .2s; 
        -o-transition: height .2s; 
        width: 574px;           /* [변경] 가로 드랍다운 메뉴의 넓이 */
    }
    .submenu li {
        display: inline-block;  /* [변경] 가로로 펼쳐지도록 설정 */
    }
    .topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
        height: 32px;           /* [변경] 높이를 32px로 설정 */
    }
    .submenuLink:hover {        /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */
        color: red;                 
        background-color: #dddddd;  
    }
</style>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<div>
			<img src="img/logo1.PNG"alt="logo" width="130px" height="130px" style="float: left;"/>
			<h4><font size="50" style="border-left:30px" float="left;"> 한빛 무역</font></h4>
			</div>
			<nav id="topMenu">
				<ul>
					<li class="topMenuLi"><a class="menuLink" href="#">회사소개</a>
						<ul class="submenu">
							<li><a href="page09.jsp" class="submenuLink longLink">회사소개</a></li>
							<li><a href="page10.jsp" class="submenuLink longLink">오시는길</a></li>
						</ul></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">아이템</a>
						<ul class="submenu">
							<li><a href="#" class="submenuLink longLink">2015</a></li>
							<li><a href="#" class="submenuLink longLink">2016</a></li>
							<li><a href="#" class="submenuLink longLink">2017</a></li>
						</ul></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">협력 업체</a></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">설치.장비</a>
						<ul class="submenu">
							<li><a href="#" class="submenuLink">자바스크립트</a></li>
							<li><a href="#" class="submenuLink">강좌</a></li>
							<li><a href="#" class="submenuLink">K100D</a></li>
						</ul></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">MEDIA
							LOG</a></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">고객지원 센터</a></li>
				</ul>
			</nav>
			</div>
</body>
</html>