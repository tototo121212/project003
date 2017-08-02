<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>회 원 가 입</title>
<style type="text/css">
	body{
	background-color: white;
		}
	#ncontainer{
  
	}
	#ncenter{
		margin:auto;
		float: center;
		padding: 100px;
		border-left: 500px;
	}
	#ncenter table tr,th,td{ 
		color: black;
		padding: 30px;
		border: 1px solid none;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

	function send_go(f) {
		var id = document.getElementById("id");
		var pwd = document.getElementById("pwd");
		var pwd1 = document.getElementById("pwd1");
		var name = document.getElementById("name");
		var company = document.getElementById("company");
		var pone = document.getElementById("pone");
		

		
	 	if(id.value=="") {
			alert("아이디를 입력하지 않았습니다.");
			id.focus();
		}else if (pwd.value=="") {
			alert("패스워드를 입력해주세요.");
			pwd.focus();
		}else if (pwd1.value =="") {
			alert("패스워드 확인을 입력해주세요.");
			pwd1.focus();
		}else if (pwd.value != pwd1.value){
			alert("패스워드가 다릅니다.")
			pwd.focus();
		}else if (name.value == "") {
			alert("이름를 입력해주세요.");
			name.focus();
		}else if (company.value =="") {
			alert("회사명을 입력해주세요.");
			company.focus();
		}else if (pone.value=="") {
			alert("핸드폰 번호을 입력해주세요.");
			pone.focus();
		}else{
			/* f.action="neu_insert";
			f.submit(); */
		
			$.ajax({
				url : "Ajax/neu_insert",
				type : "get",
				data : $("#neu_im").serialize(),
				datatype : "text",
				success : function(data) {
					if(data=="y"){
						alert("회원가입 되셨습니다.");
						window.close();
					}else{
						alert("회원가입 실패");
					}
				},
				error : function() {
					alert("다시 실패");
				}
			});	
		} 
	}
	id2 = $("#id").val();

	 $(function() {
		$("#chk").click(function() {
			$.ajax({
				url : "Ajax/idchk_do",
				type : "get",
				data : {id:$("#id").val()},
				datatype : "text",
				success : function(data) {
					if(data=="y"){
						alert("사용 가능");
					}else{
						alert("사용 불가능");
					}
				},
				error : function() {
					alert("회원가입 실패")
				}
			})
		})
	}); 
	
	
</script>
</head>
<body>
	<div id="container">	
		<div id="ncenter">
			<form method="post" id="neu_im">
				<table>
					<thead>
						<tr>
							<th colspan="4">회원가입</th>
						</tr>
					</thead>
					
					<tbody>
					<hr />
						<tr>
						<td>아이디</td>				
						<td><input type="text" name="id" id="id"></td>
						<td><input type="button" name="chk" value="중복확인" id="chk"/>
						</td>
						</tr>
						<tr>
						<td>패스워드</td>		
						<td><input type="password" name="pwd" id="pwd"></td>
						</tr>
						<td>패스워드 확인</td>		
						<td><input type="password" name="pwd1" id="pwd1" ></td>
						</tr>
						<tr>
						<td>이름</td>		
						<td><input type="text" name="name" id="name"></td>
						</tr>
						<tr>
						<td>회사</td>
						<td><input type="text" name="company" id="company"></td>
						</tr>
						<tr>
						<td>핸드폰 번호</td>
						<td><input type="text" name="pone" id="pone"></td>
						</tr>	
					</tbody>
					<tfoot>
						<tr><td colspan="2"><input type="button" id="new" value="회원가입" onclick="send_go(this.form)" />
								<input type="reset" value="취소" /></td></tr>
					</tfoot>
				</table>
			</form>
			
		</div>
	</div>	
</body>
</html>