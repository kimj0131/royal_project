var naver_id_login = new naver_id_login(naver.client_id, naver.callback_uri);
// 접근 토큰 값 출력
// alert(naver_id_login.oauthParams.access_token);
// 네이버 사용자 프로필 조회
naver_id_login.get_naver_userprofile("naverSignInCallback()");
// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
function naverSignInCallback() {
	// 프로필 조회 이후에 확인이 가능
	// alert(naver_id_login.getProfileData("id"));
	// alert(naver_id_login.getProfileData("name"));

	const naver_user_data = {
		social_id: naver_id_login.getProfileData("id"),
		member_name: naver_id_login.getProfileData("name"),
		member_email: naver_id_login.getProfileData("email"),
		member_type: "naver",
	};

	const xhttp = new XMLHttpRequest();
	xhttp.addEventListener("readystatechange", (e) => {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			// test alert
			alert("[TEST] : " + JSON.parse(xhttp.responseText).member_name + "님의 정보가 서버로 전달되었습니다");
		}
	});
	xhttp.open("POST", "./");
	xhttp.setRequestHeader("content-type", "application/json");
	xhttp.send(JSON.stringify(naver_user_data));

	location.href = "/royal/main/home";
}
