<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/palaceMainIntro.css" var="introCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${introCSS}" />
<title>${palaceName} 메인 페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp"/>
	
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/changdeok/changdeokgung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Changdeokgung Palace</div>
			<div id="bigText">창덕궁</div>
		</div>
	</div>
	
	<div class="banner">
		<a href="/royal/palace/changdeokhistory" class="menu">
			<img src="../resources/image/royal_inner/main/changdeok/bg_menu02_01.jpg" alt="이미지" />
			&nbsp; 창덕궁 소개, 역사
		</a><br/>
		
		<a href="/royal/palace/royalInner?palace=창덕궁&royalId=2" class="menu">	
			창덕궁 내부 건축물 &nbsp;
			<img src="../resources/image/royal_inner/main/changdeok/bg_menu02_02.jpg" alt="이미지" />
		</a><br/>
		
		<a href="/royal/palace/viewing_time" class="menu">
			<img src="../resources/image/royal_inner/main/changdeok/bg_menu02_03.jpg" alt="이미지" />
			&nbsp; 관람안내
		</a><br/>
		
		<a href="/royal/palace/reservation" class="menu">
			해설*행사 예약 &nbsp;
			<img src="../resources/image/royal_inner/main/changdeok/bg_menu02_04.jpg" alt="이미지" />
		</a><br/>
	</div>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp"/>
</body>
</html>