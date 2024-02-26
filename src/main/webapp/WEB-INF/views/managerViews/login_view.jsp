<%@page import="org.springframework.validation.BindingResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/css/manager/login_view.css" var="loginCSS" />
<c:url value="/resources/image/manager/logo/logo.png" var="logoIMG" />
<c:url value="/resources/js/manager/login_view.js" var="loginJS" />

<% 
	// 로그인 상태 확인 변수 설정
	String login_admin = (String) session.getAttribute("login_admin");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>서울고궁안내 - 관리자>로그인</title>
		<link rel="stylesheet" href="${loginCSS}" />
		<link
			rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
			crossorigin="anonymous"
		/>
	</head>
	<body class="my-login-page">
		<c:if test="${!empty login_admin}">
			<script>
				alert("이미 로그인 중입니다.");
				location.href='/royal/manage/main/index/';
			</script>
		</c:if>
	
		<section class="h-100">	
			<div class="container h-100">
				<div class="row justify-content-md-center h-100">
					<div class="card-wrapper">
						<div class="brand">
							<img src="${logoIMG}" alt="logo" />
						</div>
						<div class="card fat">
							<div class="card-body">
								<h4 class="card-title">Login</h4>
								<form action="./login" method="POST" class="my-login-validation" novalidate="">
									<div class="form-group">
										<input
											id="ID"
											type="ID"
											class="form-control"
											name="ID"
											value=""
											required
											autofocus
											placeholder="ID"
										/>
										<div class="invalid-feedback">ID가 비어있습니다</div>
									</div>

									<div class="form-group">
										<input
											id="password"
											type="password"
											class="form-control"
											name="password"
											required
											data-eye
											placeholder="Password"
										/>
										<div class="invalid-feedback">Password가 비어있습니다</div>
									</div>

									<div class="form-group m-0">
										<button type="submit" class="btn btn-primary btn-block">Login</button>
									</div>
									<div class="mt-4 text-center">ID와 Password는 관리자에게 문의하세요.</div>
								</form>
							</div>
						</div>
						<div class="footer">Copyright &copy; 2024 &mdash; 서울 고궁안내</div>
					</div>
				</div>
			</div>
		</section>

		<script
			src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"
		></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"
		></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"
		></script>
		<script src="${loginJS}"></script>
	</body>
</html>
