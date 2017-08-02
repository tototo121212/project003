<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>결과보기</h2>
       <h3>
       		<li>올린이 : ${name}</li>
       		<li>파일이름 : ${f_name }</li>
       		<li>파일이름 : ${f_name2 }</li>
       		<li>파일타입 : ${filetype }</li>
       		<li>파일크기 : ${size }KB</li>
       		<li>마지막수정날짜 : ${lastday }</li>
       </h3>
       	<hr />		
		<h3><li> 다운로드 :
		    <a href="down.do?f_name=${f_name}">${f_name}</a></li></h3>
</body>
</html>













