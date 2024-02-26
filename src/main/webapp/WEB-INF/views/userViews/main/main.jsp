<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/usermainviews/slider.css" var="sliderCSS" />
<c:url value="/resources/js/usermainviews/slider.js" var="sliderJS" />
<c:url value="/resources/image/slider/event1.jpg" var="banner1" />
<c:url value="/resources/image/royal_inner/main/gyeongbok/gyeongbokgung.jpg" var="gyeongbok" />
<c:url value="/resources/image/royal_inner/main/deoksu/deoksugung.jpg" var="deoksu" />
<c:url value="/resources/image/royal_inner/main/changgyeong/changgyeonggung.jpg" var="changgyeong" />
<c:url value="/resources/image/royal_inner/main/changdeok/changdeokgung.jpg" var="changdeok" />
<c:url value="/resources/image/royal_inner/main/jongmyo/jongmyo.jpg" var="jongmyo" />
<meta charset="UTF-8">
<title>서울고궁안내 > 메인</title>
<link rel="stylesheet" href="${sliderCSS}" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp" />
	<div class="outer">
	<div class="subtitle">서울의 궁궐과 종묘를 소개하고 그 가치의 체험을 공유하는</div>
	<div class="title1">서울 고궁안내</div>
		<div class="inner-list">
			<div class="inner">
				<img class="gung" alt="수문장 교대의식" src="${banner1}">
			</div>
			<div class="inner">
				<img class="gung" alt="경복궁" src="${gyeongbok}">
			</div>
			<div class="inner">
				<img class="gung" alt="덕수궁" src="${deoksu}">
			</div>
			<div class="inner">
				<img class="gung" alt="창경궁" src="${changgyeong}">
			</div>
			<div class="inner">
				<img class="gung" alt="창덕궁" src="${changdeok}">
			</div>
			<div class="inner">
				<img class="gung" alt="종묘" src="${jongmyo}">
			</div>
			<div class="button1">
				<a class="back" title="이전이미지">&lt;</a> <a class="next" title="다음이미지">&gt;</a>
			</div>
		</div>
	</div>
	<div class="alarm">
		<div class="left">
			<div class="notice">
				<div class="title_top">
					<div class="notice_title">공지사항</div>
					<div class="all"><a href="/royal/communication/notice">전체보기</a></div>
				</div>
				<div class="list">
					<c:forEach var="noti" items="${notice}" begin="0" end="4">
						<div class="item">
							<div class="title">공지사항</div>
							<div class="inner_title">
								<c:set value="${noti.notice_id}" var="nid" />
								<a href="/royal/communication/notice_detail?notice_id=${nid}">${noti.notice_title}</a>
							</div>
							<div class="inner_date">${noti.notice_date}</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="right">
			<div class="inform">
				<div class="main_title">알림판</div>
			</div>
			<div class="out">
				<div class="imgSlider" id="imageSlider">
					<div class="images">
						<c:url value="/resources/image/slider/main_inform_default_img.png"
							var="informDefaultImg" />
						<img alt="informDefaultImg" class="img" src="${informDefaultImg}" />
					</div>
					<c:forEach var="evt" items="${currentMonthEventList}" begin="0" end="2">
						<div class="images">
							<a href="${evt.event_link}" target="_blank"> <img alt="${evt.event_name}"
								class="img" src="${evt.event_imgpath}" />
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />

	<script src="${sliderJS}"></script>
</body>
</html>