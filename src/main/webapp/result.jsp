<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>회원 검색 결과</title>
</head>
<body>
    <h2>검색 결과</h2>
	<!-- 
		Servlet에서 전달받은 데이터를 바탕으로 응답화면 그리기.
		1. servlet에서 전달받은 데이터가 존재하는 경우와 , 존재하지 않는 경우를
		나눠서 작업할것.
		2. 작업시에는 core라이브러의 태그들을 사용할 것
			 C:FOREACH 사용하여 하기
	 -->
	<div>
		<!-- 일치하는 회원이 존재하지 않는 경우 -->
		<c:if test="${empty resultList }">
		<p style="color:red;">해당 이름의 회원이 존재하지 않습니다.</p>
		</c:if>
		<!-- "성"을 검색한 경우 회원정보 출력예시 -->
		<c:if test="${not empty resultList }">
			<c:forEach var="find" items="${resultList}">
			<p>이름 : ${find.name }</p>
			<p>나이 : ${find.age }</p>
			<p>성별 : ${find.gender }</p>
			</c:forEach>
		</c:if>
	</div>   
</body>
</html>
