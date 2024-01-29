<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<c:url value="/resources/css/header.css" var="headerCSS" />
	<c:url value="/resources/image/logo.png" var="logoIMG" />
	<link rel="stylesheet" href="${headerCSS}" />
	<link rel="stylesheet" href="${logoIMG}" />
	
</head>
<body>
	<div class="header_top">
		<a id="login" href="/royal/main/login">로그인</a>
	</div>
	
<div id="top_category">
		
			<div>
				<ul class="home_category">
					<li id="logo"><a href="/royal/main/home"><img src="${logoIMG}"/></a></li>
				<div class="dropdown">
					<li id="HC_name">
						<a id="HC_name_a" href="">궁소개</a>
					</li>
					<div id="dropdown_category">
						<a href="/royal/palace/gyeongbokmain">경복궁</a>
						<a href="/royal/palace/deoksumain">덕수궁</a>
						<a href="/royal/palace/changgyeongmain">창경궁</a>
						<a href="/royal/palace/changdeokmain">창덕궁</a>
						<a href="/royal/palace/jongmyomain">종묘</a>
					</div>
				</div>	
					<li id="HC_name"><a id="HC_name_a" href="">통합예약</a></li>
					<li id="HC_name"><a id="HC_name_a" href="">행 사</a></li>
					<li id="HC_name"><a id="HC_name_a" href="">소 통</a></li>
					<li id="HC_name"><a id="HC_name_a" href="">팀 소개</a></li>
				</ul>
			</div>
		

			<div id="notice_category">
				<div id="category"><a>공지사항</a></div>
				<div id="category"><a>QnA</a></div>
			</div>

</div>

