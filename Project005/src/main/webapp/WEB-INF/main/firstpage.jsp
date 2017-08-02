<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	ul li{
		list-style: none;
	}
</style>
</head>
<body>
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" />
	<div id="jb-content">
			<div>
				<img alt="page1" src="img/page1.jpg">
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
				<img alt="page3" src="img/page3.png">
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
	
		
	<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
	<input type="hidden" value="${id}">
</body>
</html>