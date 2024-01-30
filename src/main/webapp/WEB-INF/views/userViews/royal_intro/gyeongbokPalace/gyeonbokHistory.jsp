<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/historyCSS.css" var="historyCSS" />
<c:url value="/resources/image/gyeongbok/gb.png" var="gyeongbokimage" />
<c:url value="/resources/image/gyeongbok/gbicon.png" var="gyeongbokicon" />
<meta charset="UTF-8">
<title>경복궁 소개 및 역사 페이지</title>
<link rel="stylesheet" href="${historyCSS}" />
</head>
<body>
	<jsp:include page="../../../layout/header.jsp" />
	<br>
	<div>
		<h2>경복궁 소개.역사</h2>
		<hr width="70%">
		<div>
			<div class="container">
				<img alt="경복궁메인이미지" src="${gyeongbokimage}" />
			</div>
			<div class="container">
				<img src="${gyeongbokicon}" alt="경복궁아이콘" />
			</div>
			<div>
				<div class="title_wrap">
					경복궁(景福宮)은 1392년 조선 건국 후<br> 1395년(태조 4)에 창건한 조선왕조 제일의
					법궁(法宮)이다.
				</div>
				<br>

				<div class="title_text">
					경복궁은 백악산(북악산)을 주산으로 넓은 지형에 건물을 배치하였고 정문인 광화문 앞으로 넓은 육조거리가 펼쳐진 한양의
					중심이었다. ‘경복’의 이름은 ‘새 왕조가 큰 복을 누려 번영할 것’이라는 의미가 담겨있으며, 이곳에서 세종 대에
					훈민정음이 창제되어 반포되기도 하였다.. <br> <br> 경복궁은 1592년(선조 25) 임진왜란으로
					소실되었는데 그 후 복구되지 못하였다가 270여년이 지난 1867년(고종 4)에 다시 지어졌다. 고종 대에 들어 건청궁과
					태원전, 집옥재 등이 조성되었으며, 특히 건청궁 옥호루는 1895년 을미사변으로 명성황후가 시해되는 비운의 장소이기도
					하다.<br> <br> 1910년 경술국치 후 경복궁은 계획적으로 훼손되기 시작하여 1915년
					조선물산공진회를 개최한다는 명분으로 대부분의 전각들이 철거되었고, 1926년에는 조선총독부 청사를 지어 경복궁의 경관을
					훼손하였다. 이후 1990년대부터 본격적으로 경복궁 복원공사가 진행되었고 1996년 조선총독부 청사를 철거하였으며 흥례문
					일원, 침전 권역, 건청궁과 태원전, 그리고 광화문 등이 복원되어 현재에 이르고 있다.
				</div>
			</div>
		</div>
	</div>
	<div>
		<div class="history">역사</div>
		<div>
			<table class="history_table" border="1">

				<thead class="history_table caption">
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
							<div>경복궁 창건</div>
						</td>
					</tr>
					<tr>
						<td>
							<p>1426년(세종 8)</p>
						</td>
						<td>
							<div>광화문, 건춘문, 영추문 지음</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1446년(세종 28)</p>
						</td>
						<td>
							<div>훈민정음 반포</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1475년(성종 6)</p>
						</td>
						<td>
							<div>북문의 이름을 신무문이라 함</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1592년(선조 25)</p>
						</td>
						<td>
							<div>임진왜란으로 소실</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1865년(고종 2)</p>
						</td>
						<td>
							<div>중건 시작</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1867년(고종 4)</p>
						</td>
						<td>
							<div>중건 완료</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1873년(고종 10)</p>
						</td>
						<td>
							<div>건청궁 지음</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1895년(고종 32)</p>
						</td>
						<td>
							<div>건청궁 옥호루에서 을미사변 발생</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1896년(고종 33)</p>
						</td>
						<td>
							<div>고종이 거처를 러시아공사관으로 옮김</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1915년</p>
						</td>
						<td>
							<div>조산물산공진회 개최로 전각 철거</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1926년</p>
						</td>
						<td>
							<div>조선총독부 청사 지음</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1990년~</p>
						</td>
						<td>
							<div>복원공사 시작</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1996년</p>
						</td>
						<td>
							<div>조선총독부 청사 철거(~1997년)</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">2001년~2021년</p>
						</td>
						<td>
							<div>흥례문 일원, 광화문 일원, 흥복전, 향원정 보수 및 취향교 복원</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">2023년</p>
						</td>
						<td>
							<div>동궁 내 계조당 복원</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<br>
	<jsp:include page="../../../layout/footer.jsp" />
</body>
</html>