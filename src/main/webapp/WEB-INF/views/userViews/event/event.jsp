<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- CSS URL -->
	<c:url value="/resources/css/event/event.css" var="eventCSS" />
	
	<!--  JS URL -->
	<c:url value="/resources/js/event/event.js" var="eventJS" />
	<c:url value="/resources/js/event/slider.js" var="sliderJS" />
	
	<meta charset="UTF-8">
	<title>행사</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="stylesheet" href="${eventCSS}" />
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<div class="top_img_name">
		<div>
			<img id="top_bg_Img" src="../resources/image/event/bg_sub04.jpg">
		</div>
		<div id="sub_category_name">
			<h2>행사정보</h2>
		</div>
	</div>

	<div class="date-wrap">
            <div class="date-month">
                <button type="button" id="month-prev" class="month-move"> 〈 </button>
                <span id="month-this"></span>
                <button type="button" id="month-next" class="month-move"> 〉 </button>     
            </div>
     </div>

	<div class="outer">
		<div class="inner-list">
			
			<!-- JS에서 생성하게 될 inner 구조 -->
			<!--
			<div class="inner">
				<div class="detail detail_default">
					<img id="eventImg_default" src="http://localhost:9000/royal/resources/image/event/noEvent.png">
					<div id="eventContent_default">해당 달에 등록된 행사가 없습니다.</div>
				</div>
			</div>
			<div class="inner">
				<div class="detail">
					<img id="eventImg" src="https://www.chf.or.kr/jnrepo/upload/jnPrgCalendarContents/202308/ce2da9099edc46a4ac6c6cb006830403_1692231253807.jpg">
					<div class="eventContents">
						<div class="ALL_BTN CD_BTN">창덕궁</div>
						<div class="mainTitle">2023년 창덕궁 달빛기행(하반기)</div>

						<div class="subTitle">
							<span class="material-symbols-outlined"
								style="vertical-align: middle;">location_on</span> <span
								style="vertical-align: middle;">장소</span>
						</div>
						<div class="content">창덕궁</div>

						<div class="subTitle">
							<span class="material-symbols-outlined"
								style="vertical-align: middle;">calendar_month</span> <span
								style="vertical-align: middle;">기간</span>
						</div>
						<div class="content">23/09/07 ~ 23/10/22</div>

						<div class="subTitle">
							<span class="material-symbols-outlined"
								style="vertical-align: middle;">link</span> <span
								style="vertical-align: middle;">링크</span>
						</div>
						<div class="content">
							<a href="https://www.chf.or.kr/short/2fbw">https://www.chf.or.kr/short/2fbw</a>
						</div>
					</div>
				</div>
			</div>
			<div class="button1">
				<a class="back" title="이전이미지">back</a> <a class="next" title="다음이미지">next</a>
			</div> 
			-->
		</div>
	</div>
	<%-- <script src="${sliderJS}"></script> --%>
	<script src="${eventJS}"></script>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>