<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는길</title>
<c:url value="/resources/css/royalInfoCSS/lnb.css" var="lnbCSS" />
<c:url value="/resources/css/royalInfoCSS/roadmap.css" var="roadmapCSS" />
<c:url value="/resources/image/royalInfo/royalInfo.jpg" var="royalInfoIMG" />

<link rel="stylesheet" href="${lnbCSS}" />
<link rel="stylesheet" href="${roadmapCSS}" />

<link rel="stylesheet" href="${royalInfoIMG}" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />

	<div class="contents_wrap">
		<div class="contents contents_sub">
			<div class="sub_visual">
				<div>
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
			</div>
		</div>
	</div>
	<div id="map" style="width: 100%; height: 350px;"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a02c96fb7cb49a8f4966e5fbe5a27f11"></script>
		<!-- a02c96fb7cb49a8f4966e5fbe5a27f11 숨겨야함 -->
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		var marker = new kakao.maps.Marker({
			// 지도 중심좌표에 마커를 생성합니다 
			position : map.getCenter()
		});
		// 지도에 마커를 표시합니다
		marker.setMap(map);
	</script>
		<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>
