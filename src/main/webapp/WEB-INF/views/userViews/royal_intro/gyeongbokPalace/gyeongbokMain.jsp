<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/palaceMainIntro.css"
	var="introCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${introCSS}" />
<title>${palaceName}메인페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp" />

	<div class="mainPic">
		<div class="mainImage">
			<img
				src="../resources/image/royal_inner/main/gyeongbok/gyeongbokgung.jpg"
				alt="">
		</div>
		<div class="mainText">
			<div id="smallText">gyeongbokgung Palace</div>
			<div id="bigText">경복궁</div>
		</div>
	</div>

	<div class="sub_section sub_main_menu">
		<div class="inner">
			<ul class="list">
				<li class="menu"><a href="/royal/palace/gyeongbokhistory">
						<div class="banner_img">
							<img
								src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_01.jpg"
								alt="이미지" />
						</div>
						<div class="banner_txt">
							<div class="txt_small">조선의 법궁 경복궁을 소개합니다.</div>
							<div class="txt_big">경복궁 소개 ·역사</div>
						</div>
				</a></li>
				<li class="menu"><a
					href="/royal/palace/royalInner?palace=경복궁&royalId=1">
						<div class="banner_img">
							<img
								src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_02.jpg"
								alt="이미지" />
						</div>
						<div class="banner_txt">
							<div class="txt_small">경복궁이 품고 있는 다양한 이야기를 살펴보세요.</div>
							<div class="txt_big">경복궁 내부 건축물</div>
						</div>
				</a></li>
				<li class="menu"><a href="/royal/palace/viewing_time">
						<div class="banner_img">
							<img
								src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_03.jpg"
								alt="이미지" />
						</div>
						<div class="banner_txt">
							<div class="txt_small">관람에 관련된 내용을 확인해보세요.</div>
							<div class="txt_big">관람안내</div>
						</div>
				</a></li>
				<li class="menu"><a href="/royal/palace/reservation">
						<div class="banner_img">
							<img
								src="../resources/image/royal_inner/main/gyeongbok/bg_menu01_04.jpg"
								alt="이미지" />
						</div>
						<div class="banner_txt">
							<div class="txt_small">예약 서비스를 이용해보세요.</div>
							<div class="txt_big">해설 ·행사 예약</div>
						</div>
				</a></li>
			</ul>
		</div>
	</div>


	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>