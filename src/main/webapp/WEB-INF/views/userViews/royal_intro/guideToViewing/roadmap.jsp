<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
		<title>오시는길</title>
		<c:url value="/resources/css/royalInfoCSS/roadmap.css" var="roadmapCSS" />
		<c:url value="/resources/css/royalInfoCSS/lnb.css" var="lnbCSS" />
		<c:url value="/resources/js/royalInfo/roadmap.js" var="roadmapJS" />
		<c:url value="/resources/image/royalInfo/royalInfo.jpg"
			var="royalInfoIMG" />
		
		<link rel="stylesheet" href="${lnbCSS}" />
		<link rel="stylesheet" href="${roadmapCSS}" />
		
		<link rel="stylesheet" href="${royalInfoIMG}" />
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	
	
			<div class="contents contents_sub">
				<div class="sub_visual">
					<div class="img_wrap">
						<img src="${royalInfoIMG}" alt="">
					</div>
					<div class="txt_wrap">
						<h2 class="sub_tit">관람안내</h2>
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
	
	
					<div class="royal-name">
						<a href="/royal/palace/roadmap?palace=경복궁" class="palace-link"
							data-lat="37.57962" data-lng="126.977028">경복궁</a>
						<a href="/royal/palace/roadmap?palace=덕수궁" class="palace-link"
							data-lat="37.565824" data-lng="126.974618">덕수궁</a>
						<a href="/royal/palace/roadmap?palace=창경궁" class="palace-link"
							data-lat="37.578758" data-lng="126.995310">창경궁</a>
						<a href="/royal/palace/roadmap?palace=창덕궁" class="palace-link"
							data-lat="37.579032" data-lng="126.991012">창덕궁</a>
						<a href="/royal/palace/roadmap?palace=종묘" class="palace-link"
							data-lat="37.574574" data-lng="126.994143">종묘</a>
					</div>
	
					<div class="map" style="width: 500px; height: 400px;"></div>
				</div>
			</div>
	
	
		
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${apiKey}"></script>
		<script src="${roadmapJS}"></script>
		
		<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
	</body>
	</html>
