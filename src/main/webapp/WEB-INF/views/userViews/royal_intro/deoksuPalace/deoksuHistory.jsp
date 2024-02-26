<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/historyCSS.css"
	var="historyCSS" />
<c:url value="/resources/image/royal_inner/history/deoksu/ds.png"
	var="deoksuimage" />
<c:url value="/resources/image/royal_inner/history/deoksu/dsicon.png"
	var="deoksuicon" />
<meta charset="UTF-8">
<title>서울고궁안내 - 덕수궁>소개 및 역사</title>
<link rel="stylesheet" href="${historyCSS}" />

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp" />
</head>
<body>
	<br>
	<div>
		<div class="palace_title">덕수궁 소개 ·역사</div>
		<hr width="65%">
		<div>
			<div class="container">
				<img class="img" alt="덕수궁메인이미지" src="${deoksuimage}" />
			</div>
			<div class="icon">
				<img class="img" src="${deoksuicon}" alt="덕수궁아이콘" />
			</div>
		</div>
		<br>
		<div class="title_wrap">덕수궁은 1897년에 선포된 황제국, 대한제국의 황궁으로 옛 이름은
			경운궁입니다.</div>
		<br>
		<div class="title_text">
			덕수궁은 원래 조선 제 9대 성종의 형인 월산대군의 사저였고, 그 후에도 월산대군의 후손이 살던 곳이었다. 1592년(선조
			25) 임진왜란으로 도성의 궁들이 모두 소실되자 1593년(선조 26)부터 임시 궁궐로 사용하여 정릉동 행궁(貞陵洞
			行宮)이라 불렸다. 이후 1611년(광해군 3) 경운궁(慶運宮)으로 이름이 정해지면서 정식 궁궐이 되었다가, 창덕궁이
			중건되면서 다시 별궁으로 남게 되었다. <br> <br> 그러다가 1897년(광무 1) 고종이 대한제국을
			선포하고 황제의 자리에 오르자 대한제국의 황궁으로 사용하였다. 이후 황궁에 맞게 규모를 확장하고 격식을 높였으며, 궁궐 내
			서양식 건물을 짓기 시작하여 전통 건축물과 서양식 건축물이 조화를 이루게 되었다. 그러나 1904년(광무 8) 대화재로 많은
			건물이 소실되었고, 1907년 일제에 의해 고종이 황위에서 물러나자 궁의 이름이 덕수궁으로 바뀌게 되었다. 일제강점기
			이후에는 덕수궁의 규모가 대폭 축소되어 대부분의 건물들이 철거되었다. 동시에 공원화가 진행되어 궁궐로서의 면모를 잃게
			되었다. 1946~47년에는 덕수궁 석조전에서 제1·2차 미소공동위원회를 개최하기도 하였다. 이후 덕수궁의 복원이 꾸준히
			이루어져 현재의 모습이 되었다.
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
							<p style="text-align: center;">1593년(선조 26)</p>
						</td>
						<td>
							<div>월산대군의 사저를 정릉동 행궁으로 삼음</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1611년(광해군 3)</p>
						</td>
						<td>
							<div>경운궁으로 승격</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1618년(광해군 10)</p>
						</td>
						<td>
							<div>선조의 왕비 인목왕후를 유폐하고, 서궁이라 낮추어 부름</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1623년(인조 1)</p>
						</td>
						<td>
							<div>경운궁의 대부분 건물을 원래 주인에게 돌려줌</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1897년(건양 2)</p>
						</td>
						<td>
							<div>러시아공사관에 있던 고종이 경운궁으로 환궁</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1897년(광무 1)</p>
						</td>
						<td>
							<div>대한제국 선포, 경운궁을 황궁으로 삼음</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1904년(광무 8)</p>
						</td>
						<td>
							<div>대화재로 소실</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1906년(광무 10)</p>
						</td>
						<td>
							<div>주요 전각 복원공사</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1907년(융희 1)</p>
						</td>
						<td>
							<div>궁의 이름을 덕수궁으로 바꿈</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">1910년</p>
						</td>
						<td>
							<div>석조전 준공</div>
						</td>
					</tr>
					<tr>
						<td>
							<p style="text-align: center;">2007년~</p>
						</td>
						<td>
							<div>덕수궁 복원공사 시작</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<br>
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>