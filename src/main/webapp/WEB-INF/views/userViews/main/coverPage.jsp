<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서울고궁안내</title>
<c:url value="/resources/css/layout/coverpage.css" var="coverpageCSS" />
<c:url value="/resources/image/layout/cover/coverMainBtn.png"
	var="coverMainBtn" />
<c:url value="/resources/image/layout/cover/gyeongbok.png"
	var="gyeongbok" />
<c:url value="/resources/image/layout/cover/changdeok.png"
	var="changdeok" />
<c:url value="/resources/image/layout/cover/changgyeong.png"
	var="changgyeong" />
<c:url value="/resources/image/layout/cover/deoksu.png" var="deoksu" />
<c:url value="/resources/image/layout/cover/jongmyo.png" var="jongmyo" />
<c:url value="/resources/image/layout/cover/icon1.png" var="icon1" />
<c:url value="/resources/image/layout/cover/icon2.png" var="icon2" />
<c:url value="/resources/image/layout/cover/icon3.png" var="icon3" />
<c:url value="/resources/image/layout/cover/icon4.png" var="icon4" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

<link rel="stylesheet" href="${coverpageCSS}" />
</head>
<body>

	<div id="divfull">

		<!-- 좌측 -->
		<div id="leftDiv">
			<div id="left1">
				<div class="leftImg">
					<a href="/royal/palace/gyeongbokmain"><img src="${gyeongbok}"
						id="palaceImg" alt="경복궁" /></a>
				</div>
				<div class="main">
					<div class="main_plus">
						<div class="main_name">
							<span class="material-symbols-outlined"> counter_1 </span>&nbsp;경복궁
						</div>
						<div class="main_icon">
							<img src="${icon1}" alt="icon" class="icon" /> <img
								src="${icon2}" alt="icon" class="icon" /> <img src="${icon3}"
								alt="icon" class="icon" /> <img src="${icon4}" alt="icon"
								class="icon" />
						</div>
					</div>
					<div class="introduce">조선왕조 500년의 역사가 시작된 조선 시대 최초의 궁궐. 서울에
						남아 있는 5대 궁궐 중에서 가장 크고 웅장하며, 근정전·경회루 등 대표 전각을 통해 격조 높은 왕실 문화와 생활상,
						당시 건축문화까지 엿볼 수 있다. 궁중 문화를 전시한 고궁박물관과 한국 생활사를 볼 수 있는 민속박물관도 있다.</div>
				</div>
			</div>
			<div id="left2">
				<div class="leftImg">
					<a href="/royal/palace/changdeokmain"><img src="${changdeok}"
						id="palaceImg" alt="창덕궁" /></a>
				</div>
				<div class="main">
					<div class="main_plus">
						<div class="main_name">
							<span class="material-symbols-outlined"> counter_2 </span>&nbsp;창덕궁
						</div>
						<div class="main_icon">
							<img src="${icon1}" alt="icon" class="icon" /> <img
								src="${icon2}" alt="icon" class="icon" /> <img src="${icon3}"
								alt="icon" class="icon" /> <img src="${icon4}" alt="icon"
								class="icon" />
						</div>
					</div>
					<div class="introduce">유네스코 세계 문화유산이자 조선 시대 궁궐 중 원형이 가장 잘 보존된
						궁.1405년 지어진 창덕궁은 역대 조선의 왕들이 가장 오랫동안 머물렀던 궁궐로 그림 같은 풍경을 자랑한다. 창덕궁
						후원은 제한 관람 지역이라 궁궐 관람과는 별도로 요금을 지불해야 하며 관람 시간과 인원도 제한적이니 홈페이지에서 규정을
						꼭 확인해야 한다.</div>
				</div>
			</div>
			<div id="left3">
				<div class="palace_tour">PALACE TOUR</div>
				<div class="tour_intro">
					조선왕조 500년 역사가 깃든 5대 궁궐부터<br> 조선의 왕과왕비의 신주를 모시는 사당까지. 고궁들은 저마다<br>
					한국 고유의 멋과 아름다움을 간직하고 있다.
				</div>
			</div>
			<div id="left4">
				<div class="tip">TIP. 한복 체험</div>
				<div class="tip_intro">
					색색의 고운 우리나라 전통의상 한복을 입고 고궁을 방문하면 입장료가 무료!<br> 궁궐 근처 한복 대여점이
					많으니 한복을 입고 조선 시대로 여행을 떠나보길 추천한다.
				</div>
			</div>

		</div>

		<!--  가운데 메인이미지 버튼 (Go to Main) -->
		<div class="centerDiv">
			<a href="/royal/main/home"><img id="palaceImg_Main"
				src="${coverMainBtn}" alt="메인페이지" /></a>
		</div>

		<div class="rightDiv">
			<div id="right">
				<div class="main">
					<div class="main_plus">
						<div class="main_name">
							<span class="material-symbols-outlined"> counter_3 </span>&nbsp;창경궁
						</div>
						<div class="main_icon">
							<img src="${icon1}" alt="icon" class="icon" /> <img
								src="${icon2}" alt="icon" class="icon" /> <img src="${icon3}"
								alt="icon" class="icon" /> <img src="${icon4}" alt="icon"
								class="icon" />
						</div>
					</div>
					<div class="introduce">조선 9대 임금 성종이 세조비 정희왕후, 예종비 안순왕후, 덕종비
						소혜왕후 세 명의 왕후를 위해 지은 궁궐. 창덕궁과 연결되어 동궐이라는 하나의 궁역을 형성하며, 창덕궁의 모자란
						주거공간을 보충해 주는 역할을 했다. 창경궁의 정문 홍화문 등을 통해 당시 뛰어난 건축미를 볼 수 있으며, 1909년에
						완공된 우리나라 최초의 서양식 온실도 살펴볼 수 있다.</div>
				</div>
				<div class="right_image">
					<a href="/royal/palace/changgyeongmain"><img
						src="${changgyeong}" id="palaceImg" alt="창경궁" /></a>
				</div>
			</div>
			<div id="right">
				<div class="main">
					<div class="main_plus">
						<div class="main_name">
							<span class="material-symbols-outlined"> counter_4 </span>&nbsp;덕수궁
						</div>
						<div class="main_icon">
							<img src="${icon1}" alt="icon" class="icon" /> <img
								src="${icon2}" alt="icon" class="icon" /> <img src="${icon3}"
								alt="icon" class="icon" /> <img src="${icon4}" alt="icon"
								class="icon" />
						</div>
					</div>
					<div class="introduce">대한제국 설립의 역사적 무대가 된 조선 시대의 궁궐. 서울의 궁궐 중
						근대식 전각과 서양식 정원, 분수가 있는 유일한 곳으로 중세와 근대가 잘 어우러져 있다. 매일 정문에서 열리는 수문장
						교대 의식은 놓칠 수 없는 볼거리. 덕수궁을 따라 이어진 돌담길은 한국의 아름다운 길 100에 선정된 만큼 사계절
						색다른 느낌을 준다.</div>
				</div>
				<div class="right_image">
					<a href="/royal/palace/deoksumain"><img src="${deoksu}"
						id="palaceImg" alt="덕수궁"></a>
				</div>
			</div>
			<div id="right">
				<div class="main">
					<div class="main_plus">
						<div class="main_name">
							<span class="material-symbols-outlined"> counter_5 </span>&nbsp;종묘
						</div>
						<div class="main_icon">
							<img src="${icon1}" alt="icon" class="icon" /> <img
								src="${icon2}" alt="icon" class="icon" /> <img src="${icon3}"
								alt="icon" class="icon" /> <img src="${icon4}" alt="icon"
								class="icon" />
						</div>
					</div>
					<div class="introduce">역대 조선 왕조 왕과 왕비의 신주를 모시고 제사를 지내는 사당.
						1995년 유네스코 세계 문화유산에 등재되었다. 매년 5월 열리는 종묘제례는 1464년부터 지금까지 이어진 세계에서
						가장 오래된 제례로 2001년 유네스코 인류구전 및 무형유산 걸작으로 선정됐다.</div>
				</div>
				<div class="right_image">
					<a href="/royal/palace/jongmyomain"><img src="${jongmyo}"
						id="palaceImg" alt="종묘"></a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>