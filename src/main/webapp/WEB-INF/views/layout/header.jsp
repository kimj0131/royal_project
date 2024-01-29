<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<c:url value="/resources/css/header.css" var="headerCSS" />
	<link rel="stylesheet" href="${headerCSS}" />
</head>
<body>
	<div id="header_top">
		<a id="login" href="/userViews/login/userLogin">로그인</a>
	</div>
	
	
	<div id="topcategory">
		<div></div>
		<ul><a>궁소개</a>
			<li><a>경복궁</a></li>
			<li><a>덕수궁</a></li>
			<li><a>창경궁</a></li>
			<li><a>창덕궁</a></li>
			<li><a>종묘</a></li> 
		</ul>
		</div>
		<div>통합예약</div>
		<div>행 사</div>
		<ul><a>소 통</a>
			<li><a>공지사항</a></li>
			<li><a>QnA</a></li>
		</ul>
		<div>팀 소개</div>
	</div>
