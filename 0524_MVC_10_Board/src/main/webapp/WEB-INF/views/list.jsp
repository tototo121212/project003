<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.hb.mybatis.DAO"%>
<%@page import="com.hb.mybatis.VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr {
	text-align: center;
	padding: 4px 10px;
	background-color: #f6f6f6;
}

th {
	text-align: center;
	padding: 4px 10px;
	background-color: #B2CCFF;
}
a{text-decoration: none;}
</style>
<script type="text/javascript">
	function send_go() {
		location.href="write.jsp";
	}
</script>
</head>
<body>
	<div align="center">
		<h2>BBS 리스트</h2>
		<table style="width: 700px">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
			<c:choose>
				<c:when test="${empty list}">
					<tr><td colspan="5"><h2>등록된 자료가 없습니다.</h2></td></tr>					
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${list}" varStatus="vs">
						<tr>
							<td>${pvo.totalRecord-((pvo.nowPage-1)*pvo.numPerPage+vs.index)}</td>
							<td>
							<fmt:formatNumber var="num" type="number" value="${k.step}"></fmt:formatNumber>
							 <c:forEach var="i" begin="0" end="${num}" step="1">
							 	&nhsp;&nhsp;[Re]
							 </c:forEach>
							<a href="view.jsp?seq=${k.seq}">${k.title}</a></td>
							<td>${k.writer}</td>
							<td>${k.regdate.substring(0,10)}</td>
							<td>${k.hit}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
						<ol>
							<c:choose>
								<c:when test="${pvo.beginPage <= pvo.pagePerBlock}">
									<li class="disable">이전으로</li>
								</c:when>
								<c:otherwise>
									<li><a href="list.hb?cPage=${pvo.beginPage-pvo.pagePerBlock}">이전으로</a></li>
								</c:otherwise>
							</c:choose>
							<c:forEach var="k" begin="${pvo.beginPage}" end="${pvo.endPage}">
								<c:choose>
									<c:when test="${k==pvo.nowPage}">
										<li class="now">${k}</li>
									</c:when>
									<c:otherwise>
										<li><a href="list.hb?cPage=${k}">${k}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${pvo.endPage >=pvo.totalPage}">
									<li class="disable">다음으로</li>								
								</c:when>
								<c:otherwise>
									<li><a href="list.hb?cPage=${pvo.beginPage+pvo.pagePerBlock}">다음으로</a></li>
								</c:otherwise>
							</c:choose>
						</ol>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>