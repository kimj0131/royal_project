<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>네이버 로그인 테스트</title>
		<script
			type="text/javascript"
			src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
			charset="utf-8"
		></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	</head>

	<body>
		<div id="naver_id_login"></div>
		<script>
			var naver_id_login = new naver_id_login(
				"N5HvSFFdmpPxwnX4OiLp",
				"http://localhost:9000/royal/user/login/naver/callback"
			);
			var state = naver_id_login.getUniqState();
			naver_id_login.setButton("green", 3, 40);
			naver_id_login.setDomain("http://localhost:9000");
			naver_id_login.setState(state);
			// naver_id_login.setPopup();
			naver_id_login.init_naver_id_login();
		</script>
	</body>
</html>
