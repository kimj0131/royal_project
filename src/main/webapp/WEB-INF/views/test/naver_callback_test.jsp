<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>callback</title>
		<script
			type="text/javascript"
			src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
			charset="utf-8"
		></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	</head>
	<body>
		<script type="text/javascript">
			var naver_id_login = new naver_id_login(
				"N5HvSFFdmpPxwnX4OiLp",
				"http://localhost:9000/royal/user/login/naver"
			);
			// 접근 토큰 값 출력
			alert(naver_id_login.oauthParams.access_token);
			// 네이버 사용자 프로필 조회
			naver_id_login.get_naver_userprofile("naverSignInCallback()");
			// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
			function naverSignInCallback() {
				// 프로필 조회 이후에 확인이 가능
				alert(naver_id_login.getProfileData("id"));
				alert(naver_id_login.getProfileData("name"));
				alert(naver_id_login.getProfileData("email"));

				const naver_user_data = {
					access_token: naver_id_login.oauthParams.access_token,
					identifier: naver_id_login.getProfileData("id"),
					user_name: naver_id_login.getProfileData("name"),
					user_email: naver_id_login.getProfileData("email"),
				};

				const xhttp = new XMLHttpRequest();
				xhttp.addEventListener("readystatechange", (e) => {
					if (xhttp.readyState == 4 && xhttp.status == 200) {
						alert(JSON.parse(xhttp.responseText).user_name + "님의 정보가 서버로 전달되었습니다");
					}
				});
				xhttp.open("POST", "./");
				xhttp.setRequestHeader("content-type", "application/json");
				xhttp.send(JSON.stringify(naver_user_data));

				location.href = "/royal/user/login/naver";
			}
		</script>
	</body>
</html>
