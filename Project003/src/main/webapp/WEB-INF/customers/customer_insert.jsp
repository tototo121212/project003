<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#insert_costomer tr,th,td{
		border: 1px solid black;
		padding: 20px;
		text-align: center;
	}
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
 function insert_ok(f) {
	f.action="insert_confirm";
	f.submit();
}  
</script>
</head>
<body>
	<jsp:include page="../bar/menubar.jsp" flush="false" ></jsp:include>
	<jsp:include page="../bar/sidebar.jsp" flush="false" ></jsp:include>
	 <div>
		<form method="post">
			<table id="insert_costomer">
				<tbody>
						<tr><td style="background-color: black; color: white;">제목</td><td><input type="text" name="c_subject" placeholder="제목" /></td></tr>
						<tr><td style="background-color: black; color: white;" >회사</td><td><input type="text" name="c_brand" placeholder="회사명" /></td></tr>
						<tr><td style="background-color: black; color: white;" >직원</td><td>
						<select name="c_employee">				
					    	<option value="최이사" selected="selected">김과장</option>
					    	<option value="김차장" selected="selected">최과장</option>
					    	<option value="오과장" selected="selected">회사원</option>
					    	<option value="박대리" selected="selected">박대리</option>
							<option value="군사원" selected="selected">군사원</option>
							<option value="구인턴" selected="selected">구인턴</option>
							<option value="신인턴" selected="selected">신인턴</option>
							</select>
							</td></tr>				
						<tr><td style="background-color: black; color: white; ">내용</td>
							<td><textarea rows="10" cols="70" name="c_content" placeholder="내용"></textarea></td>
				</tbody>
				<tfoot>
					<tr>
					<%-- 	<td>
						<% Calendar cal = Calendar.getInstance();
		       			 int year = cal.get(Calendar.YEAR);
		       			 int month = cal.get(Calendar.MONTH)+1;
		        		int day = cal.get(Calendar.DAY_OF_MONTH);
		    			 %> 
		    			 <input type="hidden" value="<%=year %>+'-'+<%=month%>+'-'+<%=day%>" name="c_data" /> --%>
						  <td colspan="2"><input type="button" value="만들기" onclick="insert_ok(this.form)" /></td> 
							<input type="hidden" value="${cPage}" />
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	<jsp:include page="../bar/footbar.jsp" flush="false" ></jsp:include>
</body>
</html>