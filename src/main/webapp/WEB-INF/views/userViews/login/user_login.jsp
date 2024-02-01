<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!-- naver 로그인 javascript -->
<c:url value="/resources/js/naver_login/naver_login.js" var="naverloginJS" />
<c:url value="/resources/js/naver_login/config/naver_login_config.js" var="naverConfigJS" />
<!-- kakao 로그인 ~~~ -->
<c:url value="/resources/image/kakao_login_large_wide.png" var="LOGIN_FORMAT_PNG" />
<c:url value="/kakao/login/ready" var="LOGIN_URI" />

<!-- css -->
<c:url value="/resources/css/usermainviews/user_login/user_login.css" var="user_loginCSS"></c:url>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Login</title>
		<link rel="stylesheet" href="${user_loginCSS}" />
		<script
			type="text/javascript"
			src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
			charset="utf-8"
		></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	</head>
	<body>
		<jsp:include page="../../layout/header.jsp" />

		<div id="social_login_wrap">
			<div id="login_title">간편 로그인</div>

			<div id="kakao_login_btn">
				<a href="${LOGIN_URI}">
					<img src="${LOGIN_FORMAT_PNG}" alt="kakaoLogin" />
				</a>
			</div>

			<div id="naver_login_btn">
				<div id="naver_id_login"></div>

				<script src="${naverConfigJS}"></script>
				<script src="${naverloginJS}"></script>
			</div>
		</div>

		<jsp:include page="../../layout/footer.jsp" />
	</body>
</html>
