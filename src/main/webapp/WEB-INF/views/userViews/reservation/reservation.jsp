<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/css/event/reservation.css" var="reserveCSS" />
<c:url value="/resources/js/event/reservation.js" var="reserveJS" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>통합예약</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${reserveCSS}" />
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	
	<div class="sub">
		<div class="mainImg">
			<img src="../resources/image/reservation/bg_sub02.jpg" alt="메인이미지">
		</div>
		<div>
			<h1>통합예약</h1>
		</div>
	</div>

	<h3 class="sub-heading">예약모아보기</h3>
	<div class="sub-bottom">
	해설 예약할 궁을 선택하여 주시기 바랍니다. 
	상세 내용은 방법이 달라지니 참고하여 주시기 바랍니다.</div>
	
	<div class="container">
		<div id="royalNames">
			<div class="royalname">
			 <input type="hidden" name="royal_id" value="1" />경복궁</div>
			<div class="royalname">
			 <input type="hidden" name="royal_id" value="4" />덕수궁</div>
			<div class="royalname">
			 <input type="hidden" name="royal_id" value="3" />창경궁</div>
			<div class="royalname">
			 <input type="hidden" name="royal_id" value="2" />창덕궁</div>
			<div class="royalname">
			 <input type="hidden" name="royal_id" value="5" />종묘</div>
		</div>
	</div>

	<!-- 1을 ajax로 보내서 해설리스트를 쭉 불러와

	궁당 해설이 하나만 있을예정, 각 해설당 회차 5개씩 회차 5개 db저장되어있음
  
	js에서 배열을 만들어서 해설 id가 5개 저장해놓고 경복궁 클릭하면 0번 배열 가져온다
	그 0번배열 이벤트 아이디를 확인해서 행사회차들을 table로 나열한다
	
	-> 	sysdate로 해당날짜 이전 날짜는 disable로 히든 오늘날짜와 오늘 앞쪽의 날짜들만 클릭가능함 
	날짜 클릭했을때 궁id, 해당 날짜에 대한 정보(몇일을 선택한건지), 해설id를 가져가서 ajax로 활용한다 ?
	

	0. 경복궁이 메인으로 보인다 (달력과, 행사 리스트(event_round))
	1.행사id를 가지고 있는 hidden 으로 가지고 있을 수 있는 무언가 (기본 경복궁 해설id) -->

	<div class="list-container">
		<div class="click-date">
			<h2>1. 예약 가능한 날짜 선택</h2>
			<p>해설 예약할 날짜를 선택하세요.</p>
			<div id="datepicker"></div>
		</div>
		<div class="commentary-list">
			<h2>2. 예약 시간 선택</h2>
			<p>선택한 날짜에 대한 해설 예약 가능한 시간을 선택하세요.</p>
			<div id="event-list"></div>
		</div>
	</div>
	
	<script src="${reserveJS}"></script>

	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>
