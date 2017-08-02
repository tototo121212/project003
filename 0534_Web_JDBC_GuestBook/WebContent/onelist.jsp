<%@page import="com.hb.am.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.hb.am.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%request.setCharacterEncoding("utf-8"); %>
<%
	String idx = request.getParameter("idx");
	WebApplicationContext context = 
			WebApplicationContextUtils.getWebApplicationContext(application);
	DAO dao = (DAO)context.getBean("dao");
	List<VO> list = dao.getOneList(idx);
	VO vo = list.get(0);
	// 수정과 삭제를 위해서 vo를 세션에 저장한다.
	session.setAttribute("vo", vo);
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a { text-decoration: none;}
	table{width: 500px; border-collapse:collapse; }
	table,tr,td{border: 1px solid black; padding: 3px}
</style>
<script type="text/javascript">
	function name() {
		
	}
</script>
</head>
<body>
	<div align="center">
		<h2>방명록 : 내용화면</h2>
		<hr />
		<p>[<a href="list.jsp">목록으로 이동</a>]</p>
		<form method="post"">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">작성자</td>
					<td>${vo.name}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제목</td>
					<td>${vo.subject}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">email</td>
					<td>${vo.email}</td>
				</tr>
				<tr>
					<td colspan="2">
					<pre>${vo.content}</pre>
					</td>
				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2">
							<input type="button" value="수정" onclick="update_go(this.form)" />
							<input type="button" value="삭제" onclick="delete_go(this.form)" />
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>