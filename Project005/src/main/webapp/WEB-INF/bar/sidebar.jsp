<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#jb-sidebar {
	/* width: 310px; */
	/* width: auto; */
	/* margin-right: 10px; */
	float: right;
	border: 1px solid none;
	/* background-color: #353535; */
	position: fixed;
	right: 1px;
	height: 300px;
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
	color: black;
}


</style>
</head>
<body>
	<div id="jb-sidebar">
			<h2>&nbsp;&nbsp;purchase&nbsp;list</h2>
			<ul>
				<li><a href="purchase_go?id=${id}" style="cursor: pointer;">purchase</a></li>
				<br />
				<li><a href="delivery_go?id=${id}" style="cursor: pointer;">delivery</a></li>
				<br />
				<li><a href="http://www.hanjin.com/board/webboard" target="blank" style="cursor: pointer;">Collaborative company with Driver team</a></li>
				<br />
				<li><a href="#">the rest</a></li>
			</ul>
		</div>	
</body>
</html>