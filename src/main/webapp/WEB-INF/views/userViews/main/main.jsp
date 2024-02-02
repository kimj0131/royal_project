<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/usermainviews/slider.css" var="sliderCSS" />
<c:url value="/resources/js/usermainviews/slider.js" var="sliderJS" />
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="${sliderCSS}" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/layout/navibar.jsp" />
	<div class="title" style="font-size: 30px;">궁능유적본부</div>


	<div class="images">
		<div class="img"></div>
		<div class="img"></div>
	</div>
	<div class="button1">
		<a href="#" class="back" title="이전이미지">back</a> <a href="#"
			class="next" title="다음이미지">next</a>
	</div>



	<div class="notice">
		공지사항 <a href="">전체보러가기</a>
		<div>리스트1,2,3</div>
	</div>
	<div>
		<a href="/royal/palace/event">알림판(행사)</a>
	</div>
	<!-- 행사 가는 링크 달기 -->
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

	<script src="${sliderJS}"></script>
</body>
</html>