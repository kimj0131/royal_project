<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/historyCSS.css" var="historyCSS" />
<c:url value="/resources/image/royal_inner/history/changgyeong/cg.png" var="changgyeongimage" />
<c:url value="/resources/image/royal_inner/history/changgyeong/cgicon.png" var="changgyeongicon" />
<meta charset="UTF-8">
<title>창경궁 소개 및 역사 페이지</title>
<link rel="stylesheet" href="${historyCSS}" />
</head>
<body>
	<jsp:include page="../../../layout/header.jsp" />
	<jsp:include page="../../../layout/navibar.jsp"/>
	<br>
	<div>
		<h2>창경궁 소개.역사</h2>
		<hr width="70%">
		<div>
			<div class="container">
				<img class="img" alt="창경궁메인이미지" src="${changgyeongimage}" />
			</div>
			<div class="container">
				<img class="img" src="${changgyeongicon}" alt="창경궁아이콘" />
			</div>
			<div>
				<div class="title_wrap">창경궁(昌慶宮)은 성종이 세 명의 대비를 위해 옛 수강궁에 창건한
					궁이다.</div>
				<br>
				<div class="title_text">
					창경궁은 원래 1418년(세종 즉위) 세종이 상왕 태종을 위해 창건한 수강궁(壽康宮)이 있던 자리이다. 이후
					1483년(성종 14) 성종이 세 명의 대비(세조의 왕비 정희왕후, 덕종의 왕비 소혜왕후, 예종의 왕비 안순왕후)를 위해
					수강궁을 크게 확장하고 궁의 이름을 창경궁이라 하였다. 창경궁은 창덕궁과 경계 없이 동궐(東闕)이라는 하나의 궁궐
					영역이었으며 주로 왕실 가족들의 생활 공간으로 사용하였다. 창경궁은 1592년(선조 25) 임진왜란으로 소실된 것을
					1616년(광해군 8) 중건하였으며, 1830년(순조 30) 대화재로 대부분의 건물들이 소실되었다가 4년 뒤에
					중건하였다.<br> <br> 그러나 1907년 순종이 황위에 오른 후 창경궁 내에 동물원과 식물원을
					조성하면서 궁궐로서의 모습을 잃기 시작하였다. 1911년에는 일제에 의해 궁의 이름마저 창경원(昌慶苑)으로 격하되어
					궁궐이 아닌 공원화가 되어 훼손이 심하였다. 광복 후 1983년에 다시 창경궁으로 명칭을 회복한 후, 궁궐 경내에 있던
					동물원을 이전하고 본래 궁궐의 모습으로 복원공사가 진행되어 현재의 모습이 되었다. 창경궁은 남향으로 있는 다른 궁궐과
					달리 정문과 정전이 동향으로 배치되어 있다.
				</div>
			</div>
		</div>
	</div>

	<div>
		<div class="history">역사</div>
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
							<p style="text-align: center;">1418년(세종 즉위)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">수강궁 창건</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1483년(성종 14)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">창경궁 창건</div>
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
							<p style="text-align: center;">1616년(광해군 8)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">명정전, 문정전, 환경전 등 중건</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1624년(인조 2)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">이괄의 난으로 내전 건물(통명전, 양화당 등) 소실</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1633년(인조 11)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">내전 건물 중건</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1830년(순조 30)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">대화재로 대부분 전각 소실</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1834년(순조 34)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">소실된 주요 전각 중건</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1909년(융희 3)</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">창경궁 내 동물원과 식물원 개설</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1911년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">궁의 이름을 창경원으로 격하</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1983년</p>
						</td>
						<td>
							<div class="t_inn_wrap tal">창경궁으로 명칭 회복, 복원공사 시작</div>
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