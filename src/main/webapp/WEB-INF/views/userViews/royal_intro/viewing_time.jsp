<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>관람시간</title>
<c:url value="/resources/css/royalInfoCSS/viewing_time.css" var="viewing_timeCSS" />
<c:url value="/resources/css/royalInfoCSS/lnb.css" var="lnbCSS" />
<c:url value="/resources/image/royalInfo/royalInfo.jpg"
	var="royalInfoIMG" />
<link rel="stylesheet" href="${viewing_timeCSS}" />
<link rel="stylesheet" href="${lnbCSS}" />
<link rel="stylesheet" href="${royalInfoIMG}" />
</head>

<body>

	<jsp:include page="../../layout/header.jsp" />

	<div class="contents_wrap" id="contents_wrap">
		<!-- [S] contents -->
		<div class="contents contents_sub">
			<!-- [S] sub_visual-->
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
							href="/royal/palace/viewing_time"><B>관람시간</a></li>
						<li class="lnb_depth2_item" id="SNB_R703000000"><a
							href="/royal/palace/fare">관람요금</a></li>
						<li class="lnb_depth2_item" id="SNB_R707000000"><a href="/royal/palace/loadmap">오시는
								길</a></li>
					</ul>
				</div>
				<div class="contents_inn" id="sub_contents">
					<div class="sub_tit_wrap">
						<h2 class="tit">관람시간</h2>
					</div>
					<div class="sub_txt_wrap"></div>
					<div class="sub_con_wrap pt0" id="sub_con_wrap">
						<!-- [S] sub_con_section -->
						<div class="sub_con_section">
							<div class="txt_section_tit">정기휴일</div>
							<ul class="holiday_list">
								<li class="holiday_item bd_box">
									<div class="img_wrap">
										<img
											src="https://royal.cha.go.kr/resource/templete/royal/img/sub/information/ic_mon.png"
											alt="">
									</div>
									<div class="tit_wrap">월요일</div>
									<div class="txt_wrap">창덕궁, 덕수궁, 창경궁</div>
								</li>
								<li class="holiday_item bd_box">
									<div class="img_wrap">
										<img
											src="https://royal.cha.go.kr/resource/templete/royal/img/sub/information/ic_tue.png"
											alt="">
									</div>
									<div class="tit_wrap">화요일</div>
									<div class="txt_wrap">경복궁, 종묘</div>
								</li>
							</ul>
							<div class="info_txt">※ 단, 정기휴일이 공휴일 및 대체공휴일과 겹칠 경우에는 개방하며,
								그 다음의 첫 번째 비공휴일이 정기휴일임</div>
						</div>
						<!-- [E] sub_con_section -->
						<!-- [S] sub_con_section -->
						<div class="sub_con_section">
							<div class="txt_section_tit">일반관람시간</div>
							<div class="wrap table_wrap">
								<table class="table bd_table bd th_c" data-pe_b-o-c="">
									<colgroup>
										<col style="width: 12%;">
										<col style="width: 10%;">
										<col style="width: 10%;">
										<col style="width: 17%;">
										<col style="width: 26%;">
										<col style="width: 25%;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="3">궁능유적</th>
											<th scope="col">구분</th>
											<th scope="col">관람시간</th>
											<th scope="col">비고</th>
										</tr>
									</thead>
									<tbody data-pe_b-o-c="">
										<tr>
											<td rowspan="3" colspan="3">경복궁</td>
											<td>1월~2월, 11월~12월</td>
											<td>09:00~17:00 (입장마감 16:00)</td>
											<td rowspan="6">기관사정에 따라 관람시간 단축 및 조정이 있을 수 있습니다.<br>
												<br> ※안전 관리를 위해 퇴장 시간 30분 전부터 퇴장 유도(안내 방송 포함)를 하고 있음
											</td>
										</tr>
										<tr>
											<td class="bdl">3월~5월, 9월~10월</td>
											<td>09:00~18:00 (입장마감 17:00)</td>
										</tr>
										<tr>
											<td class="bdl">6월~8월</td>
											<td>09:00~18:30 (입장마감 17:30)</td>
										</tr>

										<tr>
											<td rowspan="3" colspan="3">창덕궁</td>
											<td>2월~5월, 9월~10월</td>
											<td>09:00~18:00 (입장마감 17:00)</td>
											<td rowspan="3"></td>
										</tr>
										<tr>
											<td class="bdl">6월~8월</td>
											<td>09:00~18:30 (입장마감 17:30)</td>
										</tr>
										<tr>
											<td class="bdl">11월~1월</td>
											<td>09:00~17:30 (입장마감 16:30)</td>
										</tr>
										<tr>
											<td rowspan="4">덕수궁</td>
											<td colspan="2">일반</td>
											<td>1월~12월</td>
											<td>09:00~21:00 (입장마감 20:00)</td>
											<td>야간상시</td>
										</tr>
										<tr>
											<td rowspan="3" class="bdl">전시관</td>
											<td>석조전</td>
											<td>1월~12월</td>
											<td>09:30~17:30 <span class="red">(16:30 마지막 해설)</span></td>
											<td>인터넷 사전예약제<br> (제한관람, 해설사 동반)
											</td>
										</tr>
										<tr>
											<td class="bdl">돈덕전</td>
											<td>1월~12월</td>
											<td>09:00~17:30 (입장마감 17:00)</td>
											<td></td>
										</tr>
										<tr>
											<td class="bdl">중명전</td>
											<td>1월~12월</td>
											<td>09:30~17:30(입장마감 17:00)</td>
											<td></td>
										</tr>
										<tr>
											<td colspan="3">창경궁</td>
											<td>1월~12월</td>
											<td>09:00~21:00 (입장마감 20:00)</td>
											<td>야간 상시</td>
										</tr>
										<tr>
											<td colspan="3" rowspan="3">종묘</td>
											<td>2월~5월, 9월~10월</td>
											<td>09:00~18:00 (입장마감 17:00)</td>
											<td rowspan="3">매주 토요일 및 문화가 있는 날 (매월마지막 수요일)</td>
										</tr>
										<tr>
											<td class="bdl">6월~8월</td>
											<td>09:00~18:30 (입장마감 17:30)</td>
										</tr>
										<tr>
											<td class="bdl">11월~1월</td>
											<td>09:00~17:30 (입장마감 16:30)</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
						<!-- [E] sub_con_section -->
						<!-- [S] sub_con_section -->
						<div class="sub_con_section">
							<div class="txt_section_tit">특별관람시간</div>
							<div class="wrap table_wrap">
								<table class="table bd_table bd th_c">
									<colgroup>
										<col style="width: 13%;">
										<col style="width: 13%;">
										<col style="width: 13%;">
										<col>
										<col style="width: 15%;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">궁능유적</th>
											<th scope="col" colspan="2">구분</th>
											<th scope="col">관람시간</th>
											<th scope="col">비고</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td rowspan="7">창덕궁 후원관람</td>
											<td rowspan="2">한국어</td>
											<td>11월~2월</td>
											<td>10:00 11:00 12:00 13:00 14:00 15:00</td>
											<td rowspan="7">언어권별<br> 입장 제한 <br> 1회당 100명 <br>
												(인터넷 예매 50명 + 현장발매 50명)
											</td>
										</tr>
										<tr>
											<td class="bdl">3월~10월</td>
											<td>10:00 11:00 12:00 13:00 14:00 15:00 16:00</td>
										</tr>
										<tr>
											<td rowspan="2" class="bdl">영어</td>
											<td>12월~2월</td>
											<td>10:30 11:30 14:30</td>
										</tr>
										<tr>
											<td class="bdl">3월~11월</td>
											<td>10:30 11:30 14:30 15:30</td>
										</tr>
										<tr>
											<td class="bdl">일본어</td>
											<td>1월~12월</td>
											<td>13:30<br> (매주 수,금,일요일 운영)
											</td>
										</tr>
										<tr>
											<td class="bdl">중국어</td>
											<td>1월~12월</td>
											<td>12:30<br> (매주 화,목,토요일 운영)
											</td>
										</tr>
										<tr>
											<td class="bdl" colspan="4" style="text-align: left;">-
												후원은 창덕궁 해설사의 인솔하에 제한관람만 가능.개별관람 불가.<br> - 후원 외국인 관람 시간
												내국인 입장 불가 (단, 외국인 동반자가 있는 경우 내국인 최대 2명까지 입장 가능)
											</td>
										</tr>
										<tr>
											<td rowspan="6">종묘<br> (평일 및 일요일)
											</td>
											<td rowspan="2">한국어</td>
											<td>3월~9월</td>
											<td>09:20 10:20 11:20 12:20 13:20 14:20 15:20 16:20
												17:00</td>
											<td rowspan="6">언어권별<br> 입장 제한 <br> 1회당 100명
											</td>
										</tr>
										<tr>
											<td class="bdl">10월~2월</td>
											<td>09:20 10:20 11:20 12:20 13:20 14:20 15:20 16:20</td>
										</tr>
										<tr>
											<td class="bdl">영어</td>
											<td>1월~12월</td>
											<td>10:00 12:00 14:00 16:00</td>
										</tr>
										<tr>
											<td rowspan="2" class="bdl">일본어</td>
											<td>3월~9월</td>
											<td>09:00 09:40 10:40 11:40 12:40 13:40 14:40 15:40
												16:40</td>
										</tr>
										<tr>
											<td class="bdl">10월~2월</td>
											<td>09:00 09:40 10:40 11:40 12:40 13:40 14:40 15:40
												16:40</td>
										</tr>
										<tr>
											<td class="bdl">중국어</td>
											<td>1월~12월</td>
											<td>11:00 13:00 15:00</td>
										</tr>

									</tbody>
								</table>
							</div>
							<div class="wrap light">※ 특별관람은 기관 사정에 따라 변동될 수 있으니 자세한
								사항은&nbsp;공지사항을 참고하시기 바랍니다.</div>
						</div>
						<!-- [E] sub_con_section -->
						<!-- [S] sub_con_section -->
						<div class="sub_con_section">
							<div class="txt_section_tit">창경궁 기간별 야간개방구역 이동시간 및 대온실 내부개방
								일정</div>
							<div class="wrap table_wrap">
								<table class="table bd_table bd th_c">
									<colgroup>
										<col>
										<col>
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">구분/월별</th>
											<th scope="col">11월~1월</th>
											<th scope="col">2월</th>
											<th scope="col">3월~5월/9월~10월</th>
											<th scope="col">6월~8월</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>야간개방구역 이동시간</td>
											<td>오후5시30분</td>
											<td>오후5시30분</td>
											<td>오후6시</td>
											<td>오후6시30분</td>
										</tr>
										<tr>
											<td>대온실 내부</td>
											<td>11월(개방)<br> 12월~1월<br> (오후6시부터 비개방)
											</td>
											<td>오후6시부터 비개방</td>
											<td>개방</td>
											<td>개방</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="info_txt">
								<div class="wrap light">※ 야간개방지역은 홍화문, 명정전, 통명전, 춘당지, 대온실
									권역이며, 기간별 이동시간에 따라 주간개방구역에 계신 분들께서는 야간개방구역으로 이동하여야 합니다. 또한, 대온실
									내부도 식물 보호를 위하여 위와 같이 야간에는 기간별 제한 개방을 운영하고 있으니 이점 양해 부탁드립니다.</div>
							</div>
						</div>
						<!-- [E] sub_con_section -->
						<!-- [S] sub_con_section -->


					</div>
				</div>

			</div>
		</div>
	</div>
	<jsp:include page="../../layout/footer.jsp" />
</body>

</html>