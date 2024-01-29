<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덕수궁 메인페이지</title>
</head>
<body>

	<jsp:include page="../../../layout/header.jsp"/>
	<jsp:include page="../../../layout/navibar.jsp"/>
	
	<h2>덕수궁 메인 img</h2>
	
	<div style="margin:10px">
		<img src="" alt="이미지" />
		<a href="/royal/palace/gyeongbokhistory">덕수궁 소개, 역사</a>
	</div>
	<div style="margin:10px">
		<a href="">덕수궁 내부 건축물</a>
		<img src="" alt="이미지" />
	</div>
	<div style="margin:10px">
		<img src="" alt="이미지" />
		<a href="/royal/index/gb/guide">관람안내</a>
	</div>
	<div style="margin:10px">
		<a href="/royal/index/gb/reserve">해설*행사 예약</a>
		<img src="" alt="이미지" />
	</div>
	<jsp:include page="../../../layout/footer.jsp"/>
	
</body>
</html>