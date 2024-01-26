<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경복궁메인페이지</title>
</head>
<body>

	<jsp:include page="../layout/header.jsp"/>
	<jsp:include page="../layout/navibar.jsp"/>
	
	<div>경복궁 메인 img</div>
	<div>
		<div>사진</div>
		<div> <button onclick="location.href = '/royal/index/gb/history'" >경복궁소개, 역사</button></div>
	</div>
	<div>
		<div>사진</div>
		<div><button onclick="location.href='/royal/index/gb/inner'">경복궁 내부 건축물</button></div>
	</div>
	<div>
		<div>사진</div>
		<div><button>관람안내</button></div>
	</div>
	<div>
		<div>사진</div>
		<div><button>해설*행사 예약</button></div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>