<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/usermainviews/slider.css" var="sliderCSS" />
<c:url value="/resources/js/usermainviews/slider.js" var="sliderJS" />
<c:url value="/resources/image/slider/event1.jpg" var="banner1" />
<c:url value="/resources/image/slider/event2.jpg" var="banner2" />
<c:url value="/resources/image/royal_inner/main/jongmyo/jongmyo.jpg"
	var="jongmyo" />
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="${sliderCSS}" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp" />
	<div class="title1" style="font-size: 25px;">서울고궁안내</div>

	<div class="outer">
		<div class="inner-list">
			<div class="inner">
				<img alt="수문장 교대의식" src="${banner1}">
			</div>
			<div class="inner">
				<img alt="궁능유적본부" src="${banner2}">
			</div>
			<div class="inner">
				<img alt="종묘" src="${jongmyo}">
			</div>
			<div class="button1">
				<a href="#" class="back" title="이전이미지">back</a> <a href="#"
					class="next" title="다음이미지">next</a>
			</div>
		</div>
	</div>
	<div class="alarm">
		<div class="left">
			<div class="notice">
				<div class="title_top">
					<div class="notice_title">공지사항</div>
					<a class="all" href="/royal/communication/notice">전체보기</a>
					<!-- 전체보기 링크 -->
				</div>
				<ul class="list">
					<li class="item"><a href="">
							<div class="title">공지사항</div>
							<div class="inner_title">ssss</div>
							<div class="inner_date">2024.02.12</div>
					</a></li>
					<c:forEach var="notice" items="${noticeList}" begin="1" end="5"
						step="1" varStatus="status">
						<li class="item">
							<div class="title">공지사항</div>
							<div class="inner_title">${notice.notice_title}</div>
							<div class="inner_date">${notice.notice_date}</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="right">
			<div class="banner_wrap">
				<div class="inform">
					<div class="main_title">알림판</div>
				</div>
				<a class="imgtag" href="https://www.chf.or.kr/short/6d6N"> <img alt=""
					class="img" src="https://www.chf.or.kr/jnrepo/namo/img/images/000063/20240119205704416_TEOZXDIK.png">
				</a>
				<div></div>
				<!-- 행사 가는 링크 달기 -->
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />

	<script src="${sliderJS}"></script>
</body>
</html>