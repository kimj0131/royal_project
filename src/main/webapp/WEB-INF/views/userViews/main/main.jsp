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
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/layout/navibar.jsp" />
	<div class="title" style="font-size: 30px;">궁능유적본부</div>

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
	<div class="layout">
		<div class="notice">
			<div class="title_top">
				<h2 class="notice_title">공지사항</h2>
				<a href=""> <span class="all">전체보러가기</span>
				</a>
			</div>
			<ul class="list">
				<li class="item"><a href=""> <span class="inner_title">공지사항</span>
						<div>공지사항 제목 내용1111111</div> <span class="inner_title">2024.02.05</span>
				</a></li>
				<li class="item"><a href=""> <span class="inner_title">공지사항</span>
						<div>공지사항 제목 내용2222222</div> <span class="inner_title">2024.02.05</span>
				</a></li>
				<li class="item"><a href=""></a></li>
				<li class="item"><a href=""></a></li>
			</ul>
		</div>
		<div>
			<div class="inform">
				<a href="/royal/palace/event">알림판(행사)</a>
			</div>
			<!-- 행사 가는 링크 달기 -->
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

	<script src="${sliderJS}"></script>
</body>
</html>