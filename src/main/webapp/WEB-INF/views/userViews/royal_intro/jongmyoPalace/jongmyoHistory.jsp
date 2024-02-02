<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/historyCSS.css" var="historyCSS" />
<c:url value="/resources/image/royal_inner/history/jongmyo/jm.png" var="jongmyoimage" />
<c:url value="/resources/image/royal_inner/history/jongmyo/jmicon.png" var="jongmyoicon" />
<meta charset="UTF-8">
<title>종묘 소개 및 역사 페이지</title>
<link rel="stylesheet" href="${historyCSS}" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/layout/navibar.jsp"/>
	<br>
	<div>
		<h2>종묘 소개.역사</h2>
		<hr width="70%">
		<div>
			<div class="container">
				<img class="img" alt="종묘메인이미지" src="${jongmyoimage}" />
			</div>
			<div class="container">
				<img class="img" src="${jongmyoicon}" alt="종묘아이콘" />
			</div>
		</div>
		<br>
		<div class="title_wrap">
			종묘(宗廟)는 조선과 대한제국의 역대 왕과 왕비, <br> 황제와 황후의 신주를 모시고 제사를 지내는 국가
			사당이다.
		</div>
		<div class="title_text">조선 건국 후 1395년(태조 4) ‘궁궐을 기준으로 왼쪽에 종묘,
			오른쪽에 사직을 세운다’는 예에 따라 현재의 자리에 종묘를 창건하였다. 창건 당시에는 현재의 정전만 있어서 대묘, 태묘,
			종묘라고 불렀다. 조선은 제후국으로 5묘제(五廟制)의 예에 따라 개국시조(태조)와 재위 중인 왕의 4대
			조상(고조·증조·조·부)을 모시는 제도로 종묘에 신주를 모셨다. 그러다가 세종대에 5묘제에 따라 태조를 제외하고 4대가 지난
			왕의 신주를 두고 여러 차례 논의한 끝에 정전 옆에 새로운 별묘(別廟)를 지어 그 이름을 영녕전이라 하였다. 이후 4대가
			지난 왕의 신주는 모두 영녕전으로 옮겨 모셨다가, 연산군 대에 ‘세실(世室, 대대로 정전에 신주를 모심)’과 ‘조천(祧遷,
			영녕전으로 신주를 옮김)’의 예로 신주를 모시게 되었다. 이러한 예에 따라 3년상(27개월)이 끝난 왕과 왕비의
			부묘례(祔廟禮, 신주를 종묘에 모시는 의식)때 정전에 처음 신주가 모셔지고, 이후 ‘세실’ 또는 ‘조천’으로 정하여 정전과
			영녕전에 각각 신주를 모시게 되었다. 그러다가 모시는 신주가 늘어나면서 신실이 몇 차례 증축이 되어 현재의 정전 19칸,
			영녕전 16칸의 규모가 되었다. 그 밖에 종묘 경내에는 망묘루(望廟樓, 종묘서(宗廟署)의 관원들이 제례에 관한 업무를 보던
			곳), 향대청(香大廳, 향과 축문을 보관하는 곳), 재궁(齋宮, 왕과 세자가 제사를 올릴 준비를 하던 곳), 전사청(典祀廳,
			제사의 음식을 마련하는 곳) 등의 건물이 있다.</div>
		<br>
	</div>
	<div>
		<div>
			<table class="history_table" border="1">
				<thead>
					<tr>
						<th scope="col">연도</th>
						<th scope="col">내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<p style="text-align: center;">1395년(태조 4)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">
								종묘 창건, 정전 7칸 지음<br> 태조의 4대 조상(목조,익조, 도조,환조)의 신주를 모심
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1421년(세종 3)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">영녕전 8칸 지음</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1546년(명종 1)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">정전 4칸 증축(총 11칸)</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1592년(선조 25)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">임진왜란으로 소실</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1608년(광해군 즉위)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">종묘 중건 (정전 11칸,영녕전 10칸)</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1667년(현종 8)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">영녕전 2칸 증축(총 12칸)</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1726년(영조 2)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">정전 4칸 증축(총 15칸)</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1836년(헌종 2)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">정전 4칸,영녕전 4칸 증축(정전 총 19칸,영녕전 총
								16칸)</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1928년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">순종과 순명황후의 신주를 모심</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1931년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">육교를 세움</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1945년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">종묘제례 폐지</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1963년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">사적으로 지정</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1964년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">종묘제례악을 중요무형문화재로 지정</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1968년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">순정황후의 신주를 모심</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1969년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">종묘제례 봉행 재개(매년 10월 1일로 지정)</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1971년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">종묘제례 봉행일을 매년 5월 첫째 주 일요일로 변경</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1973년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">의민황태자(영친왕)의 신주를 모심</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1975년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">종묘제례를 중요무형문화재로 지정</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1995년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">유네스코 세계유산 등재</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">2001년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">종묘제례&nbsp;및 종묘제례악 유네스코 인류무형문화유산
								등재</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<br>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>