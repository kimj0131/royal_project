<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<% 
	String login_user = (String) session.getAttribute("login_user");
	String login_type = (String) session.getAttribute("login_type");
%>

<c:choose>
	<c:when test="${empty login_user}">
		<div class="header_top">
			<a id="login" href="/royal/main/login">로그인</a>
		</div>
	</c:when>
	<c:otherwise>
		<div class="header_top">
			<c:choose>
				<c:when test="${login_type eq 'kakao'}">
					<a id="login" href="/royal/kakao/logout/ready">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a id="login" href="/royal/user/logout">로그아웃</a>
				</c:otherwise>
			</c:choose>
			<span id="login">|</span>
			<a id="login" href="/royal/mypage/myPageView">마이페이지</a>
		</div>
	</c:otherwise>
</c:choose>


