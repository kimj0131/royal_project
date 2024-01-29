<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<jsp:include page="../../layout/header.jsp" />
	<h1>메인페이지</h1>

	<jsp:include page="../../layout/navibar.jsp" />

	<div style="font-size: 60px;">
		<div>궁능유적본부</div>
		<div style="background-color: gray;">슬라이드</div>
	</div>

	<div>
		<div>
			공지사항 <a href="">전체보러가기</a>
			<div>리스트1,2,3</div>
		</div>
		<div>알림판(행사)</div>
	</div>
	<jsp:include page="../../layout/footer.jsp" />

</body>
</html>