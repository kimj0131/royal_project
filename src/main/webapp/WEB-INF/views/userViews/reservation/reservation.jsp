<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/css/reservation.css" var="reserveCSS" />
<c:url value="/resources/css/reservation.js" var="reserveJS" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>통합예약</title>
<link rel="stylesheet" href="${reserveCSS}" />
</head>
<body>
	<jsp:include page="../../layout/header.jsp" />

	<div class="sub">
		<div class="mainImg">
			<img
				src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub02.jpg"
				alt="">
		</div>
		<div>
			<h1>통합예약</h1>
		</div>
	</div>

	<h3 class="sub-heading">예약모아보기</h3>
	<div id="click">
		<div class="click-row">전체</div>
		<div class="click-row">경복궁</div>
		<div class="click-row">덕수궁</div>
		<div class="click-row">창경궁</div>
		<div class="click-row">창덕궁</div>
	</div>

	<span>예약할 프로그램 선택</span>

	<div class="click-container">
		<div class="events">
			<div>단체해설</div>
			<div>단체해설</div>
		</div>

		<div class="events">
			<div>행사</div>
			<div>행사</div>
		</div>
	</div>


	<script src="${reserveJS}"></script>
	
	<jsp:include page="../../layout/footer.jsp" />
</body>
</html>
