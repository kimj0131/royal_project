<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>headerlogout</title>
<c:url value="/resources/css/layout/headerlogout.css" var="headerlogoutCSS" />
<c:url value="/resources/image/layout/logo.png" var="logoIMG" />
<link rel="stylesheet" href="${headerlogoutCSS}" />
<link rel="stylesheet" href="${logoIMG}" />

</head>
<body>
	<div class="header_top">
		<a id="logout" href="">로그아웃</a>
		<a id="mypage" href="">마이페이지</a>
	</div>
	<div id="top_category">
		<ul class="menuBox">
			<li id="logo"><a href="/royal/main/home">
			<img style="width:auto; height:100px" src="${logoIMG}" /></a></li>
			<li><a id="category_name" href="/royal/palace/gyeongbokmain">궁소개</a>
				<ul id="detail_categoty" style="margin:0; padding:0; padding-top:37px">
					<li style="line-height:170%;"><a href="/royal/palace/gyeongbokmain">경복궁</a></li>
					<li style="line-height:170%;"><a href="/royal/palace/deoksumain">덕수궁</a></li>
					<li style="line-height:170%;"><a href="/royal/palace/changgyeongmain">창경궁</a></li>
					<li style="line-height:170%;"><a href="/royal/palace/changdeokmain">창덕궁</a></li>
					<li style="line-height:170%;"><a href="/royal/palace/jongmyomain">종묘</a></li>
				</ul></li>
			<li><a id="category_name" href="/royal/palace/reservation">통합예약</a></li>
			<li><a id="category_name"  href="#">행사</a></li>
			<li><a id="category_name" href="#">소통</a>
				<ul id="detail_categoty" style="margin:0; padding:0;  padding-top:37px">
					<li style="line-height:170%;"><a href="#">공지사항</a></li>
					<li style="line-height:170%;"><a href="#">QnA</a></li>
				</ul></li>
			<li><a id="category_name" href="#">팀소개</a></li>
		</ul>
	</div>
	
	<div id="header_more_bottom">
	
	</div>

	