<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>notice</title>
	<c:url value="/resources/css/communication/notice.css" var="noticeCSS" />
	<link rel="stylesheet" href="${noticeCSS}" />
</head>
<body>
	<jsp:include page="../../layout/header.jsp" />
	<div>
		<div>
			<img src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
		</div>
		<div>
			<h2>소  통</h2>
		</div>
	</div>
	
	<h1>공지사항</h1>
	
	
	
	
	
	<jsp:include page="../../layout/footer.jsp" />
</body>
</html>