<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	
	#costomer_list table {
	 
	    margin-left:10px;
	    border:1px solid black;
	    border-collapse:collapse;
	    font-size:14px;
	
	}
	
	#costomer_list table caption {
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	#costomer_list table td {
	    text-align:center;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.reg {width:20%}
	.hit {width:15%}
	.title{background:lightsteelblue}
	
	.odd {background:silver}
	
	/* paging */
	
	table tfoot ol.paging {
	    list-style:none;
	}
	
	table tfoot ol.paging li {
	    float:left;
	    margin-right:8px;
	}
	
	table tfoot ol.paging li a {
	    display:block;
	    padding:3px 7px;
	    border:1px solid #00B3DC;
	    color:#2f313e;
	    font-weight:bold;
	}
	
	table tfoot ol.paging li a:hover {
	    background:#00B3DC;
	    color:white;
	    font-weight:bold;
	}
	
	.disable {
	    padding:3px 7px;
	    border:1px solid silver;
	    color:silver;
	}
	
	.now {
	   padding:3px 7px;
	    border:1px solid #ff4aa5;
	    background:#ff4aa5;
	    color:white;
	    font-weight:bold;
	}
</style>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function insert_go() {
		location="/project3/MyController11?cPage='${cPage}'";
	}
</script>
</head>
<body>
		
	<h2 style="text-align: center;">고객지원 리스트</h2>
		<div id="costomer_list" align="center">	
			<table id="comlist">
				<thead>
					<tr>
						<th> 
					<select name="listfind">
	   		           	<option>:: 선택하세요 </option>
	   		           	<option value="brand">brand</option>
	   		           	<option value="subject">subject</option>
	   		           	<option value="content">content</option>
	   			   	</select>
	   			  		</th>
						<th colspan="3"><input type="text" name="" /><th>
						<th><input type="button" value="찾기" /><th>
					</tr>
				</thead>			
				<tbody>
					<tr>
						<td style="background-color: black; color: white;">번호</td>
						<td style="background-color: black; color: white;">브랜드</td>
						<td style="background-color: black; color: white;">직원</td>
						<td style="background-color: black; color: white;">제목</td>
						<td style="background-color: black; color: white;">내용</td>
						<td style="background-color: black; color: white;">날짜</td>
					</tr>
						<c:choose>
							<c:when test="${empty c_list}">
								<td colspan="6">자료가 존재하지 않습니다.</td>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${c_list}" varStatus="vs">
								<tr>	
									<td>${pvo.totalRecord-((pvo.nowPage-1)*pvo.numPerPage+vs.index)}</td></td>
									<td>${k.c_brand}</td>
									<td>${k.c_employee}</td>
									<td><a style="list-style: none;" href="/project3/MyController08?c_idx=${k.c_idx}&cPage=${cPage}">${k.c_subject}</a></td>
									<td>
									<c:choose>
										<c:when test="${k.c_content.length()>20}">
											${k.c_content.substring(0,20)}
										</c:when>
										<c:otherwise>
											${k.c_content}
										</c:otherwise>
									</c:choose>
									</td>
									<td>${k.c_data}</td> 
								</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<ol class="paging">
								<c:choose>
									<c:when test="${pvo.beginPage <= pvo.pagePerBlock}">
										<li class="disable">이전으로</li>
									</c:when>
									<c:otherwise>
										<li><a href="/project3/MyController07?cPage=${pvo.beginPage -pvo.pagePerBlock}">이전으로</a></li>
									</c:otherwise>
								</c:choose>
								<c:forEach var="k" begin="${pvo.beginPage}" end="${pvo.endPage}" step="1">
									<c:choose>
										<c:when test="${k==pvo.nowPage}">
											<li class="now">${k}</li>
										</c:when>
										<c:otherwise>
											<li><a href="/project3/MyController07?cPage=${k}">${k}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:choose>
									<c:when test="${pvo.endPage >= pvo.totalPage}">
										<li class="disable">다음으로</li>
									</c:when>
									<c:otherwise>
										<li><a href="/project3/MyController07?cPage=${pvo.beginPage + pvo.pagePerBlock}">다음으로</a></li>
									</c:otherwise>
								</c:choose>	
							</ol>
						</td>
					</tr>
					<tr>
						<td colspan="6"><input type="button" value="글쓰기" onclick="insert_go()" />
							<input type="button" value="취소" />
							</td>
					</tr>
				</tfoot>
			</table>
		</div>
</body>
</html>