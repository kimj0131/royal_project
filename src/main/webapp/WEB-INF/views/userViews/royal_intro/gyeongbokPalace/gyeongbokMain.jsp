<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/palaceMainIntro.css" var="introCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${introCSS}" />
<title>${palaceName}메인 페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp"/>
	
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/gyeongbok/gyeongbokgung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">gyeongbokgung Palace</div>
			<div id="bigText">경복궁</div>
		</div>
	</div>
	
	<div class="banner">
		<a href="/royal/palace/gyeongbokhistory" class="menu">
			<img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_01.jpg" alt="이미지" />
			&nbsp; 경복궁 소개, 역사
	
		</a>	<br/>
	
		<a href="/royal/palace/royalInner?palace=경복궁&royalId=1" class="menu">
		<!-- "/RoyalInner/details/${royal_id}" -->
	        경복궁 내부 건축물 &nbsp;
	        <img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_02.jpg" alt="이미지" />
		</a>	<br/>
			
		<a href="/royal/palace/viewing_time" class="menu">
			<img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_03.jpg" alt="이미지" />
			&nbsp; 관람안내
		</a>	<br/>
		
		<a href="/royal/palace/reservation" class="menu">
			해설*행사 예약 &nbsp;
			<img src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_04.jpg" alt="이미지" />
		</a>	<br/>
	</div>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp"/>
</body>
</html>