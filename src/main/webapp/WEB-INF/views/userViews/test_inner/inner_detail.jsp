<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>궁내부 상세</title>
</head>
<body>

	<h1>궁 내부 건축물 목록</h1>
	<button onclick="location.href='/royal/TestRoyalInner/index'">인덱스로 가기</button>

	<h3>${palaceName}이야기</h3>

	<hr>

	<h5>내부 건축물 이름 목록</h5>

	<c:forEach items="${innerNameList}" var="innerName">
		<form action="/royal/TestRoyalInner/inner" method="get">
			<input type="hidden" name="palace" value="${palaceName}" />
			<input type="hidden" name="inner" value="${innerName}" />
			<button type="submit">${innerName}</button>
		</form>
	</c:forEach>

	<hr>

	<h5>내부 건축물 상세페이지</h5>
	<h5>이미지 패스 : ${innerDTO.royal_inner_imgpath}</h5>
	<h5>내부건축물 이름 : ${innerDTO.royal_inner_name}</h5>
	<h5>내부건축물 디테일 : ${innerDTO.royal_inner_detail}</h5>

</body>
</html>