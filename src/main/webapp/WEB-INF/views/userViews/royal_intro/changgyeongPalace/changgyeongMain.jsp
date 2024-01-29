<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/cg.css" var="CGCSS" />
<meta charset="UTF-8">
<title>창경궁 메인 페이지</title>
</head>
<body>

	<jsp:include page="../../../layout/header.jsp"/>
	<jsp:include page="../../../layout/navibar.jsp"/>
	
	<h2>창경궁 메인 img</h2>
	<div>
		<div class="mainImage"><img src="/resource/templete/royal/img/sub/changgyeonggung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Changgyeonggung Palace</div>
			<div id="bigText">창경궁</div>
		</div>
	</div>
	
	<div class="menu" style="margin:10px">
		<img src="/resource/templete/royal/img/sub/bg_menu03_01.jpg" alt="이미지" />
		<a href="/royal/palace/changdeokhistory">창덕궁 소개, 역사</a>
	</div>
	<div class="menu" style="margin:10px">
		<a href="/royal/index/cg/inner">창경궁 내부 건축물</a>
		<img src="/resource/templete/royal/img/sub/bg_menu03_02.jpg" alt="이미지" />
	</div>
	<div class="menu" style="margin:10px">
		<img src="/resource/templete/royal/img/sub/bg_menu03_03.jpg" alt="이미지" />
   		<a href="/userViews/reservation/commentary">관람안내</a>
	</div>
	<div class="menu" style="margin:10px">
   	<a href="/userViews/reservation/event">해설*행사 예약</a>
		<img src="/resource/templete/royal/img/sub/bg_menu03_04.jpg" alt="이미지" />
	</div>
	<jsp:include page="../../../layout/footer.jsp"/>
</body>
</html>