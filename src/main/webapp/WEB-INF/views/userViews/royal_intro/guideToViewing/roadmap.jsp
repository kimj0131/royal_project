<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는길</title>
<c:url value="/resources/css/royalInfoCSS/roadmapCSS.css"
	var="roadmapCSS" />
<c:url value="/resources/css/royalInfoCSS/lnb.css" var="lnbCSS" />
<c:url value="/resources/js/royalInfo/roadmap.js" var="roadmapJS" />
<c:url value="/resources/image/royalInfo/royalInfo.png"
	var="royalInfoIMG" />

<link rel="stylesheet" href="${lnbCSS}" />
<link rel="stylesheet" href="${roadmapCSS}" />

<link rel="stylesheet" href="${royalInfoIMG}" />
<script src="https://kit.fontawesome.com/2706cc5797.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp" />

	<div class="contents_sub">
		<div class="sub_visual">
			<div class="img_wrap">
				<img src="${royalInfoIMG}" alt="">
			</div>
			<div class="txt_wrap">
				<h2 class="sub_tit">관람안내</h2>
			</div>
		</div>
	</div>

	<div class="inner">
		<div class=lnb_wrap>
			<div class="lnb_tit">관람안내</div>
			<ul class="lnb_depth2_wrap">
				<li class="lnb_depth2_item current" id="SNB_R702000000"><a
					href="/royal/palace/viewing_time">관람시간</a></li>
				<li class="lnb_depth2_item" id="SNB_R703000000"><a
					href="/royal/palace/fare">관람요금</a></li>
				<li class="lnb_depth2_item" id="SNB_R707000000"><a
					href="/royal/palace/roadmap"><B>오시는 길</a></li>
			</ul>
		</div>
		<div class="contents_inn" id="sub_contents">

			<div class="sub_tit_wrap">
				<h2 class="tit">오시는 길</h2>
			</div>
			
			<div class="container">
				<div id="royalNames">
					<div class="palace-link royalname" id="gbBtn_active"
						data-lat="37.57962" data-lng="126.977028">
						<input type="hidden" name="royal_id" value="1" />경복궁
					</div>
					<div class="palace-link royalname" data-lat="37.565824"
						data-lng="126.974618">
						<input type="hidden" name="royal_id" value="4" />덕수궁
					</div>
					<div class="palace-link royalname" data-lat="37.578758"
						data-lng="126.995310">
						<input type="hidden" name="royal_id" value="3" />창경궁
					</div>
					<div class="palace-link royalname" data-lat="37.579032"
						data-lng="126.991012">
						<input type="hidden" name="royal_id" value="2" />창덕궁
					</div>
					<div class="palace-link royalname" data-lat="37.574574"
						data-lng="126.994143">
						<input type="hidden" name="royal_id" value="5" />종묘
					</div>
				</div>
				<div id="white_space"></div>
			</div>

			<h2 class="subTitle"></h2>

			<div class="map-container">
				<div class="map"></div>
				<div class="palace-info" id="경복궁">
					<div class="address">
						<div class="palace-info_title">
							<i class="fa-solid fa-location-dot" aria-hidden="true"></i>
							주소
						</div>
						<div class="palace-info_content address_content"></div>
					</div>
					<div class="phone">
						<div class="palace-info_title">
							<i class="fa-solid fa-phone-volume" aria-hidden="true"></i>
							연락처
						</div>
						<div class="palace-info_content phone_content"></div>
					</div>
				</div>
				<div id="palace-info_white_space"></div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${apiKey}"></script>
	<script src="${roadmapJS}"></script>

	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>
