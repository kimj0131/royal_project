<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/cg.css" var="CGCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${CGCSS}" />
<title>창경궁 메인 페이지</title>
</head>
<body>

	<jsp:include page="../../../layout/header.jsp"/>
	<jsp:include page="../../../layout/navibar.jsp"/>
	
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/cg/changgyeonggung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Changgyeonggung Palace</div>
			<div id="bigText">창경궁</div>
		</div>
	</div>
	
	<div class="menu" style="margin:10px">
		<img src="../resources/image/cg/bg_menu03_01.jpg" alt="이미지" />
		<a href="/royal/palace/changgyeonghistory">창경궁 소개, 역사</a>
	</div>
	<div class="menu" style="margin:10px">
		<a href="/royal/palace/royalInner">창경궁 내부 건축물</a>
		<img src="../resources/image/cg/bg_menu03_02.jpg" alt="이미지" />
	</div>
	<div class="menu" style="margin:10px">
		<img src="../resources/image/cg/bg_menu03_03.jpg" alt="이미지" />
   		<a href="https://royal.cha.go.kr/royal/palace/royalInfo">관람안내</a>
	</div>
	<div class="menu" style="margin:10px">
   		<a href="/royal/palace/reservation">해설*행사 예약</a>
		<img src="../resources/image/cg/bg_menu03_04.jpg" alt="이미지" />
	</div>
	<jsp:include page="../../../layout/footer.jsp"/>
</body>
</html>