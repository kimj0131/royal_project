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
	
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
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
	<div class="sub-bottom">
	예약할 프로그램을 선택하여 주시기 바랍니다. 
	해당 프로그램에 따라 예약 내용 및 방법이 달라지니 참고하여 주시기 바랍니다.</div>
	
	<div id="click">
		<div class="click-row">경복궁</div>
		<div class="click-row">덕수궁</div>
		<div class="click-row">창경궁</div>
		<div class="click-row">창덕궁</div>
	</div>

	<div class="list">
		<div class="click-container" style=" grid-column-start: 2;">
			<b>해설예약</b>
			<div class="events">
				<div>
					단체해설(평일)
					<p>단체해설 예약(평일)</p>
				</div>
				<div id="booking">예약하기</div>
			</div>
			<div class="events">
				<div>
					단체해설(주말) <p>단체해설 예약(주말)</p>
				</div>
				<div id="booking">예약하기</div>
			</div>
		</div>
		<div class="click-container" style=" grid-column-start: 3;">
			<b>행사예약</b>
			<div class="events">
				<div>
					행사제목
					<p>경복궁 야간개장</p>
				</div>
				<div id="booking">예약하기</div>
				<div id="eventPage">상세보기</div>
			</div>
		</div>
	</div>
	
	<script src="${reserveJS}"></script>

	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>
