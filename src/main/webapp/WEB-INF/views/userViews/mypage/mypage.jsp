<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<c:url value="/resources/css/mypage/mypage.css" var="mypageCSS" />
	<c:url value="/resources/css/communication/public_communication.css" var="public_communicationCSS" />
	<link rel="stylesheet" href="${mypageCSS}" />

</head>
<body>
<jsp:include page="../../layout/header.jsp" />
	
	<div class="top_img_name">
		<div>
			<img id="top_bg_Img" src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
		</div>
		<div id="sub_category_name">
			<h2>마이페이지</h2>
		</div>
	</div>
</body>
</html>