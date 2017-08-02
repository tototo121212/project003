<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${empty result}">
		<script>
			alert("회원가입에 실패 하셨습니다.");
			history.go(-1);
		</script>
	</c:when>
	<c:otherwise>
		<script>
		alert(${result} + "님 회원가입에 성공 하셨습니다.");
		window.close();
		</script>
	</c:otherwise>
</c:choose>
