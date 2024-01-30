<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/jm.css" var="JMCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${JMCSS}" />
<title>종묘 메인 페이지</title>
</head>
<body>

	<jsp:include page="../../../layout/header.jsp"/>
	<jsp:include page="../../../layout/navibar.jsp"/>

	<div style="margin:10px">
		<img src="" alt="이미지" />
		<a href="/royal/palace/jongmyohistory">종묘 소개, 역사</a>

		<div class="mainImage"><img src="../resources/image/main/jm/jongmyo.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Jongmyo Shrine</div>
			<div id="bigText">종묘</div>
		</div>
	</div>

	<div class="menu" style="margin:10px">
		<img src="../resources/image/main/jm/bg_menu05_01.jpg" alt="이미지" />
		<a href="/royal/palace/jongmyokhistory">종묘 소개, 역사</a>
	</div>
	<div class="menu" style="margin:10px">
		<a href="/royal/palace/royalInner">종묘 내부 건축물</a>
		<img src="../resources/image/main/jm/bg_menu05_02.jpg" alt="이미지" />
	</div>
	<div class="menu" style="margin:10px">
		<img src="../resources/image/main/jm/bg_menu05_03.jpg" alt="이미지" />
		<a href="/royal/palace/royalInfo">관람안내</a>
	</div>
	<div class="menu" style="margin:10px">
		<a href="/royal/palace/reservation">해설*행사 예약</a>
		<img src="../resources/image/main/jm/bg_menu05_04.jpg" alt="이미지" />
	</div>
	<jsp:include page="../../../layout/footer.jsp"/>
</body>
</html>