<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>메인페이지</h1>
	<div style="display: flex; flex-direction: row-reverse;">
		로그인
		<div id="loginHidden">
			<div>로그아웃</div>
			<div>마이페이지</div>
		</div>
	</div>
	<div style="display: grid; grid-template-columns: repeat(6, 1fr);">
		<div>로고(메인페이지)</div>
		<div>
			궁 소개
			<div id="buttonHidden">
				<div>경복궁</div>
				<div>덕수궁</div>
				<div>창경궁</div>
				<div>창덕궁</div>
				<div>종묘</div>
			</div>
		</div>
		<div>통합예약</div>
		<div>행 사</div>
		<div>
			소 통
			<div>공지사항</div>
			<div>QnA</div>
		</div>
		<div>팀 소개</div>
	</div>
	<div id="navibar">
		<div>
			<button>경복궁</button>
		</div>
		<div>
			<button>덕수궁</button>
		</div>
		<div>
			<button>창경궁</button>
		</div>
		<div>
			<button>창덕궁</button>
		</div>
		<div>
			<button>종묘</button>
		</div>
		<div>
			<button>홈버튼</button>
		</div>
		<div>
			<button>위로가기</button>
		</div>
	</div>

	<div style="font-size: 60px;">
		<div>궁능유적본부</div>
		<div style="background-color: gray;">슬라이드</div>
	</div>

	<footer>
		<div>로고</div>
		<div>깃허브</div>
	</footer>

</body>
</html>