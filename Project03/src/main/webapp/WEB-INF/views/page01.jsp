<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#jb-container {
	width: 100%;
	margin: 0px auto;
	border: 1px solid #bcbcbc;
}

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

#topMenu ul { /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */
	list-style-type: none;
	margin: auto;
	padding: 0px;
}

#topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
	color: white;
	background-color: black;
	float: left;
	line-height: 30px;
	vertical-align: middle;
	text-align: center;
	position: relative;
}

.menuLink, .submenuLink { /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
	text-decoration: none;
	display: block;
	width: 200px;
	font-size: 12px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum;
}

.menuLink { /* 상위 메뉴의 글씨색을 흰색으로 설정 */
	color: white;
}

.topMenuLi:hover .menuLink { /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
	color: red;
	background-color: #4d4d4d;
}

.longLink { /* 좀 더 긴 메뉴 스타일 설정 */
	width: 100px;
}

.submenuLink { /* 하위 메뉴의 a 태그 스타일 설정 */
	color: black;
	background-color: white;
	border: solid 1px black;
	margin-right: -1px; /* [변경] 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */
}

.submenu { /* 하위 메뉴 스타일 설정 */
	position: absolute;
	height: 0px;
	overflow: hidden;
	transition: height .2s;
	-webkit-transition: height .2s;
	-moz-transition: height .2s;
	-o-transition: height .2s;
	width: 574px; /* [변경] 가로 드랍다운 메뉴의 넓이 */
}

.submenu li {
	display: inline-block; /* [변경] 가로로 펼쳐지도록 설정 */
}

.topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
	height: 32px; /* [변경] 높이를 32px로 설정 */
}

.submenuLink:hover { /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */
	color: red;
	background-color: #dddddd;
}

#jb-sidebar {
	/* width: 310px; */
	width: 19%;
	margin-right: 10px;
	height: 1000px;
	float: left;
	border: 1px solid none;
	background-color: #353535;
}
#jb-content {	
	width: 80%;
	min-height: 1000px;
	float: left;
}


#jb-sidebar ul {
	list-style-type: none;
}

#jb-sidebar ul a {
	text-decoration: none;
	color: white;
}

#jb-footer {
	clear: both;
	border: 1px solid none;
	background-color: gray;
	text-align: center;
	text-decoration: none;
	border-bottom: 1px;
	padding: 20px;
}

#jb-footer ul {
	list-style-type: none;
}
</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#item1').click(function() {
			$('#jb-content').empty();
			$.ajax({
				url : "page02.jsp",
				dataType : "html",
				success : function() {
					$('#jb-content').load("/project3/MyController04");
				},
				error : function(e) {
					alert(e.responseText);
				}
			});
		});
		$('#brand1').click(function() {
			$('#jb-content').empty();
			$.ajax({
				url : "page03.jsp",
				dataType : "html",
				success : function() {
					$('#jb-content').load("/project3/MyController06");
				},
				error : function(e) {
					alert(e.responseText);
				}
			});
		});
		
		$('#item5').click(function() {
			$('#jb-content').empty();
			$.ajax({
				url : "page10.jsp",
				dataType : "html",
				success : function() {
					$('#jb-content').load("page10.jsp");
				},
				error : function(e) {
					alert(e.responseText);
				}
			});
		});
		
		$('#item2').click(function() {
			$('#jb-content').empty();
			$.ajax({
				url : "page09.jsp",
				dateType : "html",
				success : function() {
					$('#jb-content').load("page09.jsp");
				},
				error : function(e) {
					alert(e.responseText);
				}
				
			});
		});
		
		$('#machine').click(function() {
			$('#jb-content').empty();
			$.ajax({
				url : "page08.jsp",
				dateType : "html",
				success : function() {
					$('#jb-content').load("page08.jsp");
				},
				error : function(e) {
					alert(e.responseText);
				}
				
			});
		});
		
		
		
		$('#comlist').click(function() {
			$.ajax({
				url : "/project3/MyController07",
				type : "get",
				dateType : "html",
				success : function() {
					location.href="page04.jsp";
				},
				error : function(e) {
					alert(e.responseText);
				}
			});
		});
		
			$("#purchase_go").click(function() {
				$.ajax({
					url : "/project3/MyController13",
					type : "get",
					dataType : "text",
					success : function(data) {
						 url = "page11.jsp";
					      wr = window.open(url, "아이템", "width=950, height=850");
					},
					error : function(){
						alert("실패");
					}			
				});
			});
	
		
	});
</script>
</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<div>
				<a href="page01.jsp"><img src="img/logo1.PNG" alt="logo" width="130px" height="130px"
					style="float: left;" /></a>
				<h4>
					<font size="50" style="border-left: 30px" float="left;"> 한빛
						무역</font>
				</h4>
			</div>
			<nav id="topMenu">
				<ul>
					<li class="topMenuLi"><a class="menuLink" href="#">회사소개</a>
						<ul class="submenu">
							<li><a id="item2" style="cursor: pointer;" class="submenuLink longLink">회사소개</a></li>
							<li><a id="item5" style="cursor: pointer;" class="submenuLink longLink">오시는길</a></li>
						</ul></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">아이템</a>
						<ul class="submenu">
								<li><a id="item1" style="cursor: pointer;"
								class="submenuLink longLink">전체</a></li>
							<li><a href="#" class="submenuLink longLink">2015</a></li>
							<li><a href="#" class="submenuLink longLink">2016</a></li>
							<li><a href="#" class="submenuLink longLink">2017</a></li>
						</ul></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">협력 업체</a>
						<ul class="submenu">
							<li><a id="brand1" style="cursor: pointer;"
							class="submenuLink longLink">브랜드</a></li>
						<li><a href="#" class="submenuLink longLink">벤더 공장</a></li>
					</ul></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">설치.장비</a>
						<ul class="submenu">
							<li><a id="machine" style="cursor: pointer;" class="submenuLink">설치</a></li>
							<li><a href="#" class="submenuLink">장비</a></li>
							<li><a href="#" class="submenuLink">K100D</a></li>
						</ul></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">MEDIA
							LOG</a></li>
					<li>|</li>
					<li class="topMenuLi"><a class="menuLink" href="#">고객지원 센터</a>
					<ul class="submenu">
							<li><a id="comlist" style="cursor: pointer;" class="submenuLink longLink">고객지원 리스트</a></li>
					</ul></li>
				</ul>
			</nav>
		</div>
		<div id="jb-sidebar">
			<h2>&nbsp;&nbsp;purchase&nbsp;list</h2>
			<ul>
				<li><a id="purchase_go" style="cursor: pointer;">purchase</a></li>
				<br />
				<li><a href="#">delivery</a></li>
				<br />
				<li><a href="http://www.hanjin.com/board/webboard" target="blank" style="cursor: pointer;">Collaborative company with Driver team</a></li>
				<br />
				<li><a href="#">the rest</a></li>
			</ul>
		</div>
		<div id="jb-content">
			<div>
				<img alt="page1" src="/img/page1.jpg">
				<h2>&nbsp;&nbsp;&nbsp;&nbsp;소개글</h2>
				<ul>
					<li>품질 검증 마크 및 블루사인이 모두 통과 된 아이템들 입니다.</li>
					<li>기존에 있는 상품들과 달리 자체적으로 개발하여 새로운 아이템을 많이 만들어 가고 있습니다.</li>
					<li>기존 한국 본사 및 베트남에도 공장을 만들고 있습니다.</li>
					<li>모두가 무역 전문가 들이여서 수출 및 처리등은 자신이 있습니다.</li>
					<li>가족처럼 끝까지 믿고 맡길 수 있는 업체를 찾고 계신 분 바로 한빛 무역 입니다.</li>
					<li>수출입 대행 의뢰 시 업무 진행상황을 상세히 알고 싶으신 모든 문의는 고객센터에서 자세히 알려
						드리겠습니다.</li>
				</ul>
			</div>
			<div>
				<img alt="page3" src="/img/page3.png">
				<ul>
					<h2>한빛 무역이란...</h2>
					<li>글로벌 기업 덕산, 새로운 희망을 열어갑니다.</li>
					<li>더 좋은 품질과 투명한 경영을 통해 하루하루 발전하는 덕산의 내일에 가슴이 설레입니다.</li>
					<li>날로 늘어가는 덕산의 설비와 다양한 기술은 100여명의 임직원들이 지난 10,000여일동안 노력한 땀의
						흔적입니다.</li>
					<li>경기도 광주의 본사와 부산지사, 베트남지사까지 착실하게 확장하고 있는 덕산의 미래는</li>
					<li>다양한 신소재의 원단 개발을 통해 글로벌 기업으로 성장하고 있음을 알려주는 증거입니다.</li>
				</ul>
			</div>
		</div>
		<div id="jb-footer">
			<ul style="font-size: 20">
				<li>Copyrightⓒ 2012 IMEX GLOBIZ CO., LTD. All rights reserved</li>
				<li>서울시 종로구 322-18 YMCA 건물|대표 최진혁 | 사업자등록번호 312-12455-1235451</li>
				<li>대표번호 070-7213-5457ㅣ팩스 0101-3573-5968ㅣ이메일:toto9269@naver.com</li>
				<li>본 사이트의 콘텐츠는 저작권법의 보호를 받는 바, 무단 전재, 복사, 배포 등을 금합니다.</li>
			</ul>
		</div>
	</div>
</body>
</body>
</html>