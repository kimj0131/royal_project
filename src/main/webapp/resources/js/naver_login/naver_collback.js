const profile_form = document.getElementById("profile_form");

var naver_id_login = new naver_id_login(naver.client_id, naver.callback_uri);
// 접근 토큰 값 출력
// alert(naver_id_login.oauthParams.access_token);
// 네이버 사용자 프로필 조회
naver_id_login.get_naver_userprofile("naverSignInCallback()");
// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
function naverSignInCallback() {
	// 프로필 데이터 form input에 설정 후 submit
	var profile_social_id = document.getElementById("profile_social_id");
	var profile_user_name = document.getElementById("profile_user_name");
	var profile_user_email = document.getElementById("profile_user_email");
	var profile_social_type = document.getElementById("profile_social_type");

	profile_social_id.value = naver_id_login.getProfileData("id");
	profile_user_name.value = naver_id_login.getProfileData("name");
	profile_user_email.value = naver_id_login.getProfileData("email");
	profile_social_type.value = "naver";

	profile_form.submit();
}
