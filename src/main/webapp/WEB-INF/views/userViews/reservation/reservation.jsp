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
			<div class="royalname" id="gbBtn_active">
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

	<div class="list-container">
		<div class="click-date">
			<h2>1. 예약 가능한 날짜 선택</h2>
			<p>해설 예약할 날짜를 선택하세요.</p>
			<div id="datepicker"></div>
		</div>
		<div class="commentary-list">
			<h2>2. 예약 시간 선택</h2>
			<p>선택한 날짜에 대한 해설 예약 가능한 시간을 선택하세요.</p>
			<div id="event_round_list">
				<!-- 회차 정보가 표시될 div -->
			</div>
		</div>
	</div>
	
	<script src="${reserveJS}"></script>
	
	<!-- 페이지에 처음 진입시 경복궁 탭을 선택한 상태로 만들어주는 script -->
	<script>
		const gbBtn = $('#gbBtn_active');
		gbBtn.click();
	</script>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>
