<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
 
	.title{color:#000000;font-size:100px; text-align: center;} 
	.wrapper1 {
		border: 1px solid no;
		text-align: center;
		padding: 50px;
		float: top;
}
</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
function show2() {
	$("#context2").css("display","block")
}
function show_03() {
	$("#context3").css("display","block")
}

</script>
</head>
<body>
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>
	<h3 class="title" style="color: white;">한빛&nbsp;무역</h3> 
	
	<div class="wrapper1">
		<div style="background-color: skyblue">
			<p style="font-size: 50px" id="title2" onclick="show2()">사업소개</p>
			<div id="context2" style="display: none;">
			<img alt="사진2" src="img3/Machine01.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<img alt="사진2" src="img3/Machine02.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<img alt="사진2" src="img3/Machine03.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
	
			<img alt="사진2" src="img3/Machine04.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<br /><br />
			<img alt="사진2" src="img3/Machine05.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<img alt="사진2" src="img3/Machine06.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<img alt="사진2" src="img3/Machine07.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<img alt="사진2" src="img3/Machine08.jpg" style="border: 3px solid none; border-radius: 520px;
			moz-border-radius: 520px;-khtml-border-radius: 520px;-webkit-border-radius: 520px;float:center; height: 350px; width: 350px";>
			<br /><br />
			Mono mesh, 자카드,트리코드등 생산을 기점으로 섬유산업을 혁신하는 기계들이며 <br />
 			기능성 섬유 및 다양한 소재를 활용한 개발을 전개하여 실부터 전경부터 시작 메쉬등을 생산하고 있습니다.<br />
			 가방, 신발, 의류 뿐만 아니라 산업용으로도 제품개발을 확대하고 있습니다. 더욱더 많은 제품을 만들 자신이 있는 한빛 무역을 지켜봐 주십시오<br /><br /><br />
						</div>
					</div>
				</div>
	
                            <p onclick="show_03" style= "text-align: center; font-size: 50px">회사연혁</p><br />
                            <span class="m_tt" style="border-bottom:6px solid #25a449; font-size:80px; margin-top:-5px; position:relative; z-index:1; top:-25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<div id="intro_history" style="height:60px; margin: auto;"></div>
                        <div style="text-align:center; margin-top:80px;">
                          <div id="context3">
                            <div style="margin: auto ;" class="container">
                                <div class="vc_col-sm-3" style="color:#25a449; background-color:lime; float: left;">
                                    <p class="year_to_year">2015~2017&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                    <div style="border-left:0.1em solid #e9e9e9; padding-left:5px;">
                                        <p class="history_date" style="margin-top:15px;">2017.04</p>
                                        <p class="history_contents">DS VINA 준공</p>
                                        <p class="history_date" style="margin-top:15px;">2016.12</p>
                                        <p class="history_contents">3,000만불 수출의탑 수상<br />산업자원부 장관표창 수상</p>
                                        <p class="history_date" style="margin-top:15px;">2016.10</p>
                                        <p class="history_contents">DS VINA 착공식</p>
                                        <p class="history_date" style="margin-top:15px;">2016.09</p>
                                        <p class="history_contents">신성장 역량평가 우수기업군 선정</p>
                                        <p class="history_date" style="margin-top:15px;">2016.09</p>
                                        <p class="history_contents">QSS KICK OFF</p>
                                        <p class="history_date" style="margin-top:15px;">2016.08</p>
                                        <p class="history_contents">2공장 Double Rascell JQD 1대 설치</p>
                                        <p class="history_date" style="margin-top:15px;">2015.12</p>
                                        <p class="history_contents">이천만불 수출의 탑 수상</p>
                                        <p class="history_date">2015.10</p>
                                        <p class="history_contents">BLUESIGN SYSTEM PARTNER인증</p>
                                        <p class="history_date">2015.08</p>
                                        <p class="history_contents">(주)덕산 디자인 개발 연구부설 전담부서 인정</p>
                                        <p class="history_date">2015.05</p>
                                        <p class="history_contents">베트남 지사 FRENCH 설비 6대 설치</p>
                                    </div>
                                </div>
                                <div class="vc_col-sm-3" style="margin-top:70px; background-color: red; float:left; color:#20a99d; ">
                                    <p class="year_to_year">2014~2010&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                    <div style="border-left:0.1em solid #e9e9e9; padding-left:5px;">
                                        <p class="history_date" style="margin-top:15px;">2014.10</p>
                                        <p class="history_contents">자카드 직기 10대 증설</p>
                                        <p class="history_date">2014.10</p>
                                        <p class="history_contents">레이져 커팅기 1대 (GOLDEN LASER)</p>
                                        <p class="history_date">2014.09</p>
                                        <p class="history_contents">자카드 직기 10대 증설</p>
                                        <p class="history_date">2014.03</p>
                                        <p class="history_contents">부품소재 전문기업 인증</p>
                                        <p class="history_date">2014.03</p>
                                        <p class="history_contents">성실납세 기획재정부 장관 표창장 수상</p>
                                        <p class="history_date">2012.08</p>
                                        <p class="history_contents">ISO 9001:2008인증</p>
                                        <p class="history_date">2011.09</p>
                                        <p class="history_contents">벤쳐기업인증</p>
                                        <p class="history_date">2011.01</p>
                                        <p class="history_contents">제 2공장 증설</p>
                                        <p class="history_date">2010.09</p>
                                        <p class="history_contents">제 2공장 Double Rascell 설비 14대 설치</p>
                                    </div>
                                </div>
                                <div class="vc_col-sm-3" style="margin-top:140px; background-color:yellow; float:left; color:#446b85";>
                                    <p class="year_to_year">2009~2001&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                    <div style="border-left:0.1em solid #e9e9e9; padding-left:5px;">
                                        <p class="history_date" style="margin-top:15px;">2009.11</p>
                                        <p class="history_contents">베트남 호치민 사무소 설립</p>
                                        <p class="history_date">2009.08</p>
                                        <p class="history_contents">(주)덕산 기업부설 연구소 설립</p>
                                        <p class="history_date">2008.04</p>
                                        <p class="history_contents">제 2공장 sputtering machine 설비</p>
                                        <p class="history_date">2007.08</p>
                                        <p class="history_contents">제 2공장 압축기기 설비</p>
                                        <p class="history_date">2007.03</p>
                                        <p class="history_contents">덕산 제 2공장 준공</p>
                                        <p class="history_date">2005.06</p>
                                        <p class="history_contents">PULINE 설치</p>
                                        <p class="history_date">2004.09</p>
                                        <p class="history_contents">부산 사무실 신축 준공</p>
                                        <p class="history_date">2004.01</p>
                                        <p class="history_contents">Somat 제직기 증설</p>
                                        <p class="history_date">2002.03</p>
                                        <p class="history_contents">Dornier rapier 제직기 증설</p>
                                        <p class="history_date">2001.04</p>
                                        <p class="history_contents">Dornier rapier 제직기 증설</p>
                                    </div>
                                </div>
                                <div class="vc_col-sm-3" style="margin-top:210px; background-color:pink; float:left; color:#816147;">
                                    <p class="year_to_year">1998~1988&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                    <div style="border-left:0.1em solid #e9e9e9; padding-left:5px;">
                                        <p class="history_date" style="margin-top:15px;">1998.09</p>
                                        <p class="history_contents">미국 UL인증</p>
                                        <p class="history_date">1997.11</p>
                                        <p class="history_contents">Dornier rapier 제직기 교체</p>
                                        <p class="history_date">1997.06</p>
                                        <p class="history_contents">Q-마크 인증 획득</p>
                                        <p class="history_date">1997.05</p>
                                        <p class="history_contents">오포 공장 개축 준공</p>
                                        <p class="history_date">1995.03</p>
                                        <p class="history_contents">도니어 직기 8대 증설</p>
                                        <p class="history_date">1994.11</p>
                                        <p class="history_contents">코팅기기 설치</p>
                                        <p class="history_date">1991.11</p>
                                        <p class="history_contents">(주)덕산 상호 변경</p>
                                        <p class="history_date">1990.01</p>
                                        <p class="history_contents">경기도 광주 오포 공장 증설 및 이전</p>
                                        <p class="history_date">1989.01</p>
                                        <p class="history_contents">서울 및 부산 사무소 설치</p>
                                        <p class="history_date">1988.11</p>
                                        <p class="history_contents">덕산화학(주) 설립</p>
                                    </div>
                                </div>
                            </div>
                       	</div>
                      </div> 
				</div>		
			<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
</body>
</html>