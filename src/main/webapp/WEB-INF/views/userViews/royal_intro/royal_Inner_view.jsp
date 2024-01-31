<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>궁 내부 건축물</title>
</head>
<body>
	<div id="header">
		<ul>
			<!-- royalDTO에서 추출한 royalInnerId를 이용하여 궁 내부 건축물 정보 가져오기 -->
			<c:forEach var="royal" items="${royals}">
				<li>${royal.royalId}</li>
				<button onclick="getRoyalInnerList(${royal.royalInnerId})">
				${royal.royalName} 내부 건축물</button>
			</c:forEach>
		</ul>
	</div>

	<div id="main">
		<!-- 여기에 궁 내부 건축물 정보를 표시할 부분 -->
	</div>

	<div id="footer">
		<!-- 건축물 정보 표시 -->
		<p>${innerData.royalInnerName}</p>
		<img src="${innerData.royalInnerImgPath}" alt="건축물 이미지">
		<span>${innerData.royalInnerDetail}</span>
	</div>

</body>
</html>