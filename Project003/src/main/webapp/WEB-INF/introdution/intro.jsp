<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{background-color: white;}
<style> 


 
.title{color:#000000;font-size:100px; text-align: center;} 
.wrapper1 {
		border: 1px solid no;
		border-top: 20px;
		margin: auto;
		text-align: center;
		padding: 50px;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		
});
	function show() {
		$("#context1").css("display","block");		
	}
	function show2() {
		$("#context2").css("display","block")
	}
	function show3() {
		$("#context3").css("display","block")
	}
</script>
</head>
<body>    
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>
		<h3 class="title" style="color: white;">한빛&nbsp;무역</h3> 
	<div style="background-color: white;">
	<div class="wrapper1">
		<div style="background-color: pink">
			<p style="font-size: 50px" id="title1" onclick="show()">(주)한빛무역소개</p>
			<div id="context1" style="display: none;">
			Mono Mesh로 시작하여 신발, 가방, 산업용 원단 시장을 개척해 왔습니다.<br />
			Polyester 고 강력사를 재직한 망사원단의 일정한 코팅과 가공으로 시작했습니다. 이것을 Mono Mesh라고 합니다.<br />
			Mono Mesh로 대표되는 이러한 기능성 원단은 의류뿐 아니라 신발, 가방, 유모차 등의 생활용 원단은 물론 다용도 필터 및 각종 산업용 원단 시대를 열며,<br />
			다양한 부가가치를 창출하고 있습니다.<br />
			덕산은 이 기능성 원단의 기술력으로 승부하는 기업입니다.<br /><br />
			<img alt="사진1" src="img/page7.png">
			<img alt="사진1" src="img/page8.png"><br /><br /><br />
			글로벌 기업 한빛 무역, 새로운 희망을 열어갑니다.<br />
			더 좋은 품질과 투명한 경영을 통해 하루하루 발전하는 한빛의 내일에 가슴이 설레입니다.<br />
			날로 늘어가는 한빛의 설비와 다양한 기술은 100여명의 임직원들이 지난 10,000여일동안 노력한 땀의 흔적입니다.<br />
			서울종로의 본사와 부산지사, 베트남지사까지 착실하게 확장하고 있는 한빛의 미래는<br />
			다양한 신소재의 원단 개발을 통해 글로벌 기업으로 성장하고 있음을 알려주는 증거입니다.<br /><br /><br />
			<img alt="사진1" src="img/page3.png"><br /><br /><br />
			</div>
		</div>
		<div style="background-color: skyblue">
			<p style="font-size: 50px" id="title2" onclick="show2()">사업소개</p>
			<div id="context2" style="display: none;">
			<img alt="사진2" src="img/page9.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<img alt="사진2" src="img/page10.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<img alt="사진2" src="img/page11.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<br /><br />
			Mono mesh 생산을 기점으로 섬유산업을 시작하여<br />
 			기능성 섬유 및 다양한 소재를 활용한 개발을 전개하여<br />
			 가방, 신발, 의류 뿐만 아니라 산업용으로도 제품개발을 확대하고 있습니다.<br /><br /><br />
			</div>
		</div>		
		<div style="background-color: #B7F0B1;">	
			<p style="font-size: 50px" id="title3" onclick="show3()">품질경영(BLUE SIGN)</p>
			<div id="context3" style="display: none;">
			<font size="5px" color="#FF5E00">
			고객을 최우선으로 생각하고, 지속적인 개선활동을 통한 품질제품을 적기에 공급하여<br />
 			최고의 신뢰를 받는 기업으로 성장하는 것입니다.
 			</font>
 			<br /><br />
			<img alt="사진3" src="img/page12.png"><br /><br />	
			BLUE SIGN 이란?<br />	
			친환경 소재, 염료의 사용으로 독성 물질의 사용을 억제하고<br />	
 			환경을 생각하는 친환경 인증 프로그램으로 단순한 친환경 소재의 사용이 아닌<br />	
 			원사부터 제직,가공,완제품에 이르기까지 모든 일련의 과정들을 투명하게 추적할 수 있는 프로그램입니다.<br /><br /><br /><br />	
			</div>
		</div>
			<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
</body>
</html>