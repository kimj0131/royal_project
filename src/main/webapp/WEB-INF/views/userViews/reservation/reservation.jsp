<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/css/reservation/reservation.css" var="reserveCSS" />
<c:url value="/resources/js/reservation/reservation.js" var="reserveJS" />
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
			<h1>해설예약</h1>
		</div>
	</div>

	<div class="inner">

		<h2 id="resv_title">해설예약 모아보기</h2>
		<div id="resv_title_sub">해설 예약할 궁을 선택하여 주시기 바랍니다. 상세 내용은 방법이
			달라지니 참고하여 주시기 바랍니다.</div>

		<div class="container">
			<div id="royalNames">
				<div class="royalname" id="gbBtn_active">
					<input type="hidden" name="royal_id" value="1" />경복궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="4" />덕수궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="3" />창경궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="2" />창덕궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="5" />종묘
				</div>
			</div>
			<div id="white_space"></div>
		</div>

		<div class="list-container">
			<div class="click-date">
				<div id="resv_subTitle">1. 예약 가능한 날짜 선택</div>
				<div id="datepicker"></div>
			</div>
			<div class="commentary-list">
				<div id="resv_subTitle">2. 예약 시간 선택</div>
				<div id="event_round_list">
					<!-- 회차 정보가 표시될 div -->
				</div>
			</div>
		</div>

		<div id="white_space_middle"></div>

		<!-- bottom -->

		<div id="resv_subTitle">3. 예약정보 입력</div>
		<div class="info">
			<div class="allInfo info_title">예약명</div>
			<div class="allInfo info_content resvName">※ 예약하실 날짜와 시간을
				선택해주세요.</div>
			<div class="allInfo info_title">일시</div>
			<div class="allInfo info_content resvTime">※ 예약하실 날짜와 시간을
				선택해주세요.</div>
			<div class="allInfo info_title">이메일</div>
			<div class="allInfo info_content resvEmail">${memberEmail}</div>
			<div class="allInfo info_title">신청인원</div>
			<div class="allInfo info_content">
				<select name="resUserCnt" id="resUserCnt" title="신청인원 선택">
					<option>인원</option>
				</select>
			</div>
		</div>

		<div class="agree_box">
			<div class="agree_tit">
				<div class="tit">개인정보활용동의</div>
				<div class="ck_input_wrap">
					<input type="checkbox" name="resPriPolicyYn" id="resPriPolicyYn"
						value="Y"> <label for="resPriPolicyYn" title="개인정보활용동의">개인정보활용에
						동의합니다.</label>
				</div>
			</div>
			<div class="agree_con">
				<div class="agree_txt_box" tabindex="0">
					&lt; 개인정보 수집 및 이용에 대한 안내 &gt;<br> 1. 개인정보의 수집 및 이용 항목<br>
					- 필수: 신청자명(단체명), 연락처(전화번호 또는 휴대폰번호)<br> - 선택: 이메일, 기타내용<br>
					- 자동수집: 서비스 이용과정에서 자동으로 생성되어 수집되는 정보<br>&nbsp;&nbsp;&nbsp;(IP
					Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록)<br> 2. 개인정보의 수집 및 이용
					목적: 관람예약 신청 확인 및 통지<br> 3. 개인정보의 보유 기간: 개인정보의 수집 및 이용목적이 달성되면
					지체없이 파기<br> 4. 개인정보의 수집 및 이용의 거부: 신청자는 개인정보의 수집 및 이용을 거부할 수
					있으며, 이 경우에는 신청이 제한됩니다.<br> 5. 만약, 14세 미만의 아동이 신청하는 경우는 반드시
					법정대리인이 동의를 하여야 합니다. (개인정보보호법 제22조 ⑥)<br>
				</div>
			</div>
		</div>

		<div id="dividingLine"></div>

		<div class="agree_box">
			<div class="agree_tit">
				<div class="tit">CCTV 촬영동의</div>
				<div class="ck_input_wrap">
					<input type="checkbox" name="resFilmYn" id="resFilmYn" value="Y">
					<label for="resFilmYn" title="CCTV 촬영동의">촬영에 동의합니다.</label>
				</div>
			</div>
			<div class="agree_con">
				<div class="agree_txt_box" tabindex="0">
					&lt; 촬영 및 이용에 대한 안내 &gt;<br> 1. 촬영 목적: 방범 및 화재예방, 시설안전관리<br>
					2. 촬영 및 이용 주체: 문화재청 궁능유적본부 예약주체 관리소<br> 3. 촬영 및 이용에 대한 안내: 행사와
					관련되어 사진(동영상포함)을 촬영할 수 있으며, 해당 자료는 보도 및 홍보자료 등으로 사용될 수 있습니다.<br>
					4. 만약, 14세 미만의 아동이 신청하는 경우는 반드시 법정대리인이 동의를 하여야 합니다.(개인정보보호법 제22조 ⑥)<br>
				</div>
			</div>
		</div>

		<!-- Servlet에 Post방식으로 데이터 넘기기 -->
		<form action="reservation/regResv" method="post">
			<div class="resevBtn">
				<input id="royal_id_input" type="hidden" name="royal_id"> 
				<input id="event_id_input" type="hidden" name="event_id"> 
				<input id="resv_people_input" type="hidden" name="resv_people"> 
				<input id="resv_eventdate_input" type="hidden" name="resv_eventdate">
				<input id="round_num_input" type="hidden" name="round_num">
				
				<input id="event_name_input" type="hidden" name="event_name">
				<input id="round_time_input" type="hidden" name="round_time">
				
				<input id="finalResvBtn" type="button" value="예약하기">
				<button id="commitBtn" type="submit" style="display: none"></button>
			</div>
		</form>
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
