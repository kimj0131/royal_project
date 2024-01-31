<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>notice</title>
	<c:url value="/resources/css/communication/notice.css" var="noticeCSS" />
	<c:url value="/resources/css/communication/public_communication.css" var="public_communicationCSS" />
	<link rel="stylesheet" href="${noticeCSS}" />
	<link rel="stylesheet" href="${public_communicationCSS}" />
</head>
<body>
	<jsp:include page="../../layout/header.jsp" />
	
	<div class="top_img_name">
		<div>
			<img id="top_bg_Img" src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
		</div>
		<div id="sub_category_name">
			<h2>소  통</h2>
		</div>
	</div>
	
	<div>
		<div id="notice_title_div">
			<h2 id="notice_title">공지사항</h2>
		</div>
		
		<div class="BTN_class">
			<div id="all_BTN"><a href="">전 체</a></div>
			<div id="GB_BTN"><a href="">경복궁</a></div>
			<div id="DS_BTN"><a href="">덕수궁</a></div>
			<div id="CG_BTN"><a href="">창경궁</a></div>
			<div id="CD_BTN"><a href="">창덕궁</a></div>
			<div id="JM_BTN"><a href="">종 묘</a></div>
		</div>
	</div>
	
	<div id="white_space"></div>
	
	
	
	
	<jsp:include page="../../layout/footer.jsp" />
</body>
</html>