<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/event/event.css" var="eventCSS" />
<c:url value="/resources/js/event/event.js" var="eventJS" />
<c:url value="/resources/css/event/slider.css" var="sliderCSS" />
<c:url value="/resources/js/event/slider.js" var="sliderJS" />
<meta charset="UTF-8">
<title>행사</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://kit.fontawesome.com/879255b319.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${eventCSS}" />
<link rel="stylesheet" href="${sliderCSS}" />
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<div class="sub">
		<div class="mainImg">
			<img src="../resources/image/reservation/bg_sub04.jpg" alt="">
		</div>
		<div>
			<h1>행사</h1>
		</div>
	</div>

	<h2>행사안내</h2>
	<hr width="70%">
	
	<div class="container">
		<div class="click">
				<div class="click-row" id="GB_BTN">경복궁</div>
				<div class="click-row" id="DS_BTN">덕수궁</div>
				<div class="click-row" id="CG_BTN">창경궁</div>
				<div class="click-row" id="CD_BTN">창덕궁</div>
			</div>
	</div>

	 <div class="date-wrap">
            <div class="date-month">
                <button type="button" id="month-prev" class="month-move"> 〈 </button>
                <span id="month-this"></span>
                <button type="button" id="month-next" class="month-move"> 〉 </button>     
            </div>
     </div>
     <!-- 
	<button type="button" id="evnet-prev" class="event-move"> ← </button>
	<button type="button" id="event-next" class="event-move"> → </button>     
      -->

	<div class="outer"> <!-- eventImg -->
		<div class="innerContainer"> <!-- imageContainer -->
			
			<div class="inner">
				<div id="eventImg"></div>
				<div id="detail">
					<p>
						<i class="fa-solid fa-map-pin"></i> 행사명:
					</p>
					<p>
						<i class="fa-solid fa-location-dot"></i> 장소:
					</p>
					<p>
						<i class="fa-regular fa-calendar"></i> 기간:
					</p>
					<p>
						<i class="fa-solid fa-link" style="font-size: 12px"></i> 링크:
					</p>
					<p>자세한설명</p>
				</div>
			</div>
			

			<div class="button1">
				<a class="back" title="이전이미지">back</a> <a class="next" title="다음이미지">next</a>
			</div>
		</div>
		
		
		
	</div>

	<!-- 
	<div class="outer">
		<div class="inner-list">
		
		</div>
			<div class="button1">
				<a class="back" title="이전이미지">back</a> <a class="next" title="다음이미지">next</a>
			</div>
	</div>
 -->



       
	<script src="${eventJS}"></script>
	<script src="${sliderJS}"></script>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>