<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/palaceMainIntro.css" var="introCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${introCSS}" />
<title>${palaceName} 메인페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp"/>
		
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/deoksu/deoksugung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Deoksugung Palace</div>
			<div id="bigText">덕수궁</div>
		</div>
	</div>
	
	<div class="banner">
		<a href="/royal/palace/deoksuhistory"  class="menu">
			<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_01.jpg" alt="이미지" />
			&nbsp; 덕수궁 소개, 역사
		</a><br/>
		
		<a href="/royal/palace/royalInner?palace=덕수궁&royalId=4"  class="menu">
			덕수궁 내부 건축물 &nbsp;
			<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_02.jpg" alt="이미지" />
	
		</a><br/>
		
		<a href="/royal/palace/viewing_time"  class="menu">
			<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_03.jpg" alt="이미지" />
			&nbsp; 관람안내
	
		</a><br/>
		
		<a href="/royal/palace/reservation"  class="menu">
			해설*행사 예약 &nbsp;
			<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_04.jpg" alt="이미지" />
		</a><br/>
	
	</div>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp"/>
	
</body>
</html>