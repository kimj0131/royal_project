<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관람요금</title>
<c:url value="/resources/css/royalInfoCSS/fare.css" var="fareCSS" />
<c:url value="/resources/css/royalInfoCSS/lnb.css" var="lnbCSS" />
<c:url value="/resources/image/royalInfo/right.png" var="rightIMG" />
<c:url value="/resources/image/royalInfo/royalInfo.png"
	var="royalInfoIMG" />
<link rel="stylesheet" href="${fareCSS}" />
<link rel="stylesheet" href="${lnbCSS}" />
<link rel="stylesheet" href="${royalInfoIMG}" />
<link rel="stylesheet" href="${rightIMG}" />
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp" />

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
							href="/royal/palace/fare"><B>관람요금</a></li>
						<li class="lnb_depth2_item" id="SNB_R707000000"><a
							href="/royal/palace/roadmap">오시는 길</a></li>
					</ul>
				</div>

				<div class="contents_inn" id="sub_contents">
			
					<div class="sub_tit_wrap">
						<h2 class="tit">관람요금</h2>
					</div>

			
					<div class="sub_con_wrap pt0" id="sub_con_wrap">
						<div class="sub_con_section">
							<div class="wrap table_wrap">
								<table class="table bd_table bd th_c">
									<colgroup>
										<col style="width: 10%;">
										<col style="width: 20%;">
										<col>
										<col>
										<col>
										<col>
										<col>
										<col style="width: 20%;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2" rowspan="2">궁능유적</th>
											<th scope="col" rowspan="2">구분</th>
											<th scope="row" colspan="2"
												style="background: rgb(243, 251, 255);">개인</th>
											<th scope="row" colspan="2"
												style="background: rgb(244, 255, 243);">단체</th>
											<th scope="col" rowspan="2">비고</th>
										</tr>
										<tr>
											<th scope="col" class="bdl"
												style="background: rgb(239, 247, 255);">내국인</th>
											<th scope="col" style="background: rgb(239, 247, 255);">외국인</th>
											<th scope="col" style="background: rgb(231, 249, 229);">내국인</th>
											<th scope="col" style="background: rgb(231, 249, 229);">외국인</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="2">경복궁</td>
											<td>대인</td>
											<td>3,000원</td>
											<td>3,000원</td>
											<td>2,400원</td>
											<td>2,400원</td>
											<td>내국인<br> 만25세~만64세<br> 외국인<br>
												만19세~만64세
											</td>
										</tr>
										<tr>
											<td rowspan="5">창덕궁</td>
											<td>전각관람</td>
											<td>대인</td>
											<td>3,000원</td>
											<td>3,000원</td>
											<td>2,400원</td>
											<td>2,400원</td>
											<td>내국인<br> 만25세~만64세<br> 외국인<br>
												만19세~만64세
											</td>
										</tr>
										<tr>
											<td rowspan="4" class="bdl">후원관람</td>
											<td>경로</td>
											<td>5,000원</td>
											<td>5,000원</td>
											<td>5,000원</td>
											<td>5,000원</td>
											<td>만65세 이상</td>
										</tr>
										<tr>
											<td class="bdl">대인</td>
											<td>5,000원</td>
											<td>5,000원</td>
											<td>5,000원</td>
											<td>5,000원</td>
											<td>만19세~만64세</td>
										</tr>
										<tr>
											<td class="bdl">소인</td>
											<td>2,500원</td>
											<td>2,500원</td>
											<td>2,500원</td>
											<td>2,500원</td>
											<td>만7세~만18세</td>
										</tr>
										<tr>
											<td class="bdl" colspan="6" style="text-align: left;">후원관람
												시 전각관람권도 필수로 구매요망</span></a>
											</td>
										</tr>
										<tr>
											<td colspan="2">창경궁</td>
											<td>대인</td>
											<td>1,000원</td>
											<td>1,000원</td>
											<td>800원</td>
											<td>800원</td>
											<td>내국인<br> 만25세~만64세<br> 외국인<br>
												만19세~만64세
											</td>
										</tr>
										<tr>
											<td colspan="2" rowspan="2">덕수궁</td>
											<td>대인</td>
											<td>1,000원</td>
											<td>1,000원</td>
											<td>800원</td>
											<td>800원</td>
											<td>내국인<br> 만25세~만64세<br> 외국인<br> 19세~64세
											</td>
										</tr>
										<tr>
											<td class="bdl" colspan="6" style="text-align: left;"><span
												class="time_red">* 덕수궁 미술관 이용자 : 덕수궁 관람권 및 미술관 관람권 별도
													구매</span></td>
										</tr>
										<tr>
											<td colspan="2">종묘</td>
											<td>대인</td>
											<td>1,000원</td>
											<td>1,000원</td>
											<td>1,000원</td>
											<td>1,000원</td>
											<td>내국인<br> 만25세~만64세<br> 외국인<br>
												만19세~만64세
											</td>
									</tbody>
								</table>
							</div>
							<div class="info_txt">
								<ul class="list">
									<li class="item normal"><span class="dot"></span>단체요금은 10인
										이상 적용 (창덕궁 후원은 단체할인 없음)</li>
									<li class="item normal"><span class="dot"></span>「문화재보호법」
										및 「궁 관람 등에 관한 규정」개정에 따라 기초단체 지역주민(각 궁능 해당 소재지)이 신분증 등 증빙 제시시
										50% 관람료 할인 적용</li>
									<li class="item normal"><span class="dot"></span>단, 중복 할인
										제외 (예 : 단체요금에 50% 관람료 할인 중복 적용 불가)</li>
								</ul>
							</div>
						</div>
						<div class="sub_con_section">
							<div class="sub_con_tit">특별권</div>
							<div class="wrap table_wrap">
								<table class="table bd_table bd th_c" data-pe_b-o-c="">
									<colgroup>
										<col style="width: 20%;">
										<col style="width: 22%;">
									</colgroup>
									<colgroup>
										<col style="width: 18%;">
										<col style="width: 40%;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">구분</th>
											<th scope="col">이용시간</th>
											<th scope="col">관람요금</th>
											<th scope="col">비고</th>
										</tr>
									</thead>
									<tbody data-pe_b-o-c="">
										<tr>
											<th scope="row" rowspan="2">궁궐 통합관람권</th>
											<td>3개월 중 1회<br> (관람시간내)
											</td>
											<td>대인<br> 10,000원
											</td>
											<td>
												<ul>
													<li>- 구매일로부터 3개월간 사용가능</li>
													<li>- 4대궁 및 종묘 매표소에서 구입 가능</li>
													<li>- 환불 : 구입한 궁에서만 환불가능<br> (단, 한군데라도 절취시 환불
														불가능)
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="3">* 단, 창덕궁 후원은 입장인원 한정으로 관람권이 아닌 교환권입니다.<br>
												그러므로 후원관람권으로 선착순 교환하셔야하며 성수기에는 빨리 매진됩니다.<br> (관람 6일 전
												오전 10시부터 1일 전까지 온라인에서 예매(결제) 후 매표소에서 환불받거나, 당일 09시부터 관람권으로
												교환)<br> * 4~5월과 10~11월 주말은 매우 빨리 매진됩니다. <br></td>
										</tr>
										<tr>
											<th scope="row">상시 관람권</th>
											<td>한달 중 언제나<br> (관람시간내)
											</td>
											<td>
												<p>경복궁,창덕궁</p>30,000원
												<p>
													덕수궁,창경궁<span style="font-size: 10pt;"><span
														style="font-size: 12pt;"></span></span>
												</p>
												<p>
													<span style="font-size: 10pt;"><span
														style="font-size: 12pt;">10,000원</span></span>
												</p>
											</td>
											<td>
												<ul>
													<li>- 구매일로부터 1개월간 사용가능</li>
													<li>- 사진1매 제출</li>
													<li>- 구입한 궁능만 입장가능</li>
													<li>(창덕궁 후원 제외)</li>
												</ul>
											</td>
										</tr>
										<tr data-pe_b-o-c="">
											<th scope="row">점심시간 관람권</th>
											<td>3개월간 점심시간중에만<br> 12:00~14:00
												<p>* 덕수궁 : 11:30~13:30</p></td>
											<td data-pe_b-o-c="">경복궁,창덕궁
												<p>5,000원</p>
												<p>덕수궁,창경궁</p>
												<p>3,000원</p>
											</td>
											<td>
												<ul>
													<li>- 구매일로부터 3개월간 사용가능(10회한정)</li>
													<li>- 구입한 궁만 입장가능</li>
													<li>(창덕궁 후원 제외)</li>
												</ul>
											</td>
										</tr>
										<tr data-pe_b-o-c="">
											<th scope="row" rowspan="3">시간제 관람권</th>
											<td rowspan="3">1년간 점심시간중에만<br> 12:00~13:00
											</td>
											<td data-pe_b-o-c="">30,000원</td>
											<td data-pe_b-o-c="">
												<ul>
													<li>- 구매일로부터 1년간 사용가능</li>
													<li>- 창경궁, 덕수궁만 가능</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td rowspan="1">
												<p>50,000원</p>
											</td>
											<td rowspan="1">
												<ul>
													<li>- 구매일로부터 1년간 사용가능</li>
													<li>- 경복궁만&nbsp;가능</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>100,000원</td>
											<td>
												<ul>
													<li>- 구매일로부터 1년간 사용가능</li>
													<li>- 경복궁, 덕수궁, 창경궁 입장가능</li>
													<li>- 동반 1인 무료</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="sub_con_section">
								<div class="sub_con_tit">무료관람대상자&nbsp;</div>
								<div class="box_wrap">
									<ul class="list">
										<li class="item dot_item"><span class="dot"></span>만 6세
											이하 어린이, 만 7세~만&nbsp;24세 이하 청소년, 만 65세 이상 국민(신분증 지참)</li>
										<li class="item dot_item"><span class="dot"></span>만 18세
											이하 및 만 65세 이상 외국인</li>
										<li class="item dot_item"><span class="dot"></span>다자녀를 둔
											부모로서 지방자치단체에서 발급한 다자녀(다둥이)카드 등 관련증빙서류를 소지한 부모</li>
										<li class="item dot_item"><span class="dot"></span>「모자보건법」제2조에
											따른 임산부와 보호자 1인</li>
										<li class="item dot_item"><span class="dot"></span>국빈 및 그
											수행자, 외교사절단 및 그 수행자</li>
										<li class="item dot_item"><span class="dot"></span>국 ·
											공립기관에서 정양 중에 있는 상이군경</li>
										<li class="item dot_item"><span class="dot"></span>공무수행을
											위하여 출입하는 자, 한복을 착용한 자</li>
										<li class="item dot_item"><span class="dot"></span>학생인솔 등
											교육활동을 위해 입장하는 초·중·고 교원(유치원 및 보육시설 교사 포함)</li>
										<li class="item dot_item"><span class="dot"></span>「장애인
											복지법」에 따른 등록장애인 및 장애의 정도가 심한 장애인의 동행 보호자 1인</li>
										<li class="item dot_item"><span class="dot"></span>독립유공자
											및 배우자, 애국지사, 선순위 유족</li>
										<li class="item dot_item"><span class="dot"></span>국가유공가
											및 배우자, 상이(장애)1~3급자와 동행하는 보조인 1인, 선순위 유족</li>
										<li class="item dot_item"><span class="dot"></span>보훈보상대상자
											및 배우자, 선순위 유족 (「보훈보상대상자 지원에 관한 법률」 제54조의5(고궁 등의 이용 지원)
											2023.7.18. 시행</li>
										<li class="item dot_item"><span class="dot"></span>5.18
											민주유공자와 배우자, 선순위 유족 및 특수임무유공자와 배우자, 선순위 유족, 참전유공자</li>
										<li class="item dot_item"><span class="dot"></span>고엽제후유증
											등외자 및 수당지급 후유의증환자</li>
										<li class="item dot_item"><span class="dot"></span>관광통역안내사
											자격증 및 문화관광해설사 자격증을 패용하고 단체관람객 인솔·안내를 위해 입장하는 자</li>
										<li class="item dot_item"><span class="dot"></span>「효행 장려
											및 지원법」에 따른 효행우수자
											<ul class="list">
												<li class="item">- 「국민기초생활보장법」 에 의한 기초생활수급자</li>
											</ul></li>
										<li class="item dot_item"><span class="dot"></span>차상위계층
											중 자활급여, 건강보험료 경감대상, 장애수당, 한부모 가정 중 하나 이상의 급여를 받고 있는 자 및 기타
											보건복지부장관이 인정한 차상위계층</li>
										<li class="item dot_item"><span class="dot"></span>병무청 발급
											병역명문가증 소지자(본인), 군복을 입은 현역군인</li>
										<li class="item dot_item"><span class="dot"></span>국가무형국가유산&nbsp;보유자
											및 전수교육조교</li>
										<li class="item dot_item"><span class="dot"></span>국가유산위원
											및 전문위원</li>
										<li class="item dot_item"><span class="dot"></span>기타
											궁능유적본부장 또는 해당 궁능유적기관의 장이 인정하는 자</li>
										<li class="item">
											<ul class="list pt0">
												<li class="item c_red">※ 무료관람대상자는 반드시 관련 증빙을 제시하여야 함.</li>
												<li class="item">※ 창덕궁 후원관람 무료관람 대상자<br> - 만6세 이하,
													유공자(내국인), 장애인(내국인)
												</li>
											</ul>
										</li>
										<li class="item dot_item"><span class="dot"></span>매월 마지막
											수요일 "문화가 있는 날"<br> (창덕궁 후원 제외)</li>
										<li class="item dot_item"><span class="dot"></span>해당 지자체
											주민 50% 일반관람료 할인
											<ul class="list">
												<li class="item">※ 할인 대상자는 반드시 신분증 또는 등본 등의 증빙 서류 제시</li>
											</ul></li>
									</ul>
								</div>
							</div>

							<div class="sub_con_section">
								<div class="wrap table_wrap">
									<table class="table bd_table bd th_c">
										<colgroup>
											<col style="width: 25%;">
											<col>
											<col>
										</colgroup>
										<thead>
											<tr>
												<th scope="col">종류</th>
												<th scope="col">세부사항</th>
												<th scope="col">무료대상자 범위</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th rowspan="2">장애인</th>
												<td>중증 장애인(1급 ~ 3급)</td>
												<td>본인 및 보호자 1인</td>
											</tr>
											<tr>
												<td class="bdl">경증 장애인(4급 ~ 6급)</td>
												<td>본인</td>
											</tr>
											<tr>
												<th rowspan="3">국가유공자</th>
												<td>전상군경, 공상군경, 무공수훈자, 보국수훈자,
													6·25참전재일학도의용군인,4·19혁명부상자,4·19혁명공로자, 공상공무원, 국가사회발전특별공로상이자,
													국가사회발전특별공로공로자,6·18자유상이자</td>
												<td>본인 및 배우자</td>
											</tr>
											<tr>
												<td class="bdl">상이1급~3급 국가유공자</td>
												<td>본인 및 활동보조인 1인</td>
											</tr>
											<tr>
												<td class="bdl">참전유공자<br> 고엽제후유중등외자<br>
													고엽제후유의증환자<br> (고도·중등도·경도장애, 등급외)
												</td>
												<td>본인</td>
											</tr>
											<tr>
												<th>국가유공자 유족</th>
												<td>전몰군경 유족, 순직군경 유족<br> 4·19혁명사망자유족<br>
													순직공무원 유족<br> 국가사회발전 특별공로순직자 유족
												</td>
												<td>본인</td>
											</tr>
											<tr>
												<th>독립유공자</th>
												<td>애국지사</td>
												<td>본인 및 배우자(또는 활동보조인 1인)</td>
											</tr>
											<tr>
												<th>독립유공자 유족</th>
												<td>애국지사 유족, 순국선열 유족</td>
												<td>본인</td>
											</tr>
											<tr>
												<th rowspan="2">특수임무유공자</th>
												<td>특수임무부상자, 특수임무공로자</td>
												<td>본인 및 배우자</td>
											</tr>
											<tr>
												<td class="bdl">상이1급~3급 특수임무유공자</td>
												<td>본인 및 활동보조인 1인</td>
											</tr>
											<tr>
												<th>특수임무유공자 유족</th>
												<td>특수임무사망자(행불자) 유족</td>
												<td>본인</td>
											</tr>
											<tr>
												<th rowspan="2">5·18민주유공자</th>
												<td>5·18민주화운동부상자<br> 5·18민주화운동희생자
												</td>
												<td>본인 및 배우자</td>
											</tr>
											<tr>
												<td class="bdl">장해1급~3급 5·18민주화운동부상자</td>
												<td>본인 및 활동보조인 1인</td>
											</tr>
											<tr>
												<th>5·18민주유공자 유족</th>
												<td>5·18민주화운동사망자(행불자) 유족</td>
												<td>본인</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="sub_con_section">
								<div class="btn_wrap tac">
									<a href="/royal/palace/reservation" class="btn arr_btn_b">해설/행사
										예약하기 &nbsp;<img src="${rightIMG}" alt="">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>