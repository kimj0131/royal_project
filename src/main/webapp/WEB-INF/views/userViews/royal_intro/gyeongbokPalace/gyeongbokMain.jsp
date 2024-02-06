<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/gyeongbokgung.css" var="GBCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${GBCSS}" />
<title>${palaceName}메인 페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/layout/navibar.jsp"/>
	
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/gyeongbok/gyeongbokgung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">gyeongbokgung Palace</div>
			<div id="bigText">경복궁</div>
		</div>
	</div>
	
	<div class="banner">
	<a href="/royal/palace/gyeongbokhistory">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_01.jpg" alt="이미지" />
			경복궁 소개, 역사
		</div>
	</a>

	<a href="/royal/palace/royalInner?palace=경복궁&royalId=1">
	<!-- "/RoyalInner/details/${royal_id}" -->
    <div class="menu" style="margin: 10px"> 
        경복궁 내부 건축물 <img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_02.jpg" alt="이미지" />
    </div>
	</a>

		
	<a href="/royal/palace/viewing_time">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_03.jpg" alt="이미지" />
			관람안내
		</div>
	</a>
	
	<a href="/royal/palace/reservation">
		<div class="menu" style="margin:10px">
			해설*행사 예약
			<img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_04.jpg" alt="이미지" />
		</div>
	</a>
	</div>
	
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</body>
</html>