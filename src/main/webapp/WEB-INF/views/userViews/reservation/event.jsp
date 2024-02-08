<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/event.css" var="eventCSS" />
<c:url value="/resources/js/event.js" var="eventJS" />
<meta charset="UTF-8">
<title>행사</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${eventCSS}" />
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<div class="sub">
		<div class="mainImg">
			<img
				src="../resources/image/reservation/bg_sub04.jpg"
				alt="">
		</div>
		<div>
			<h1>행사</h1>
		</div>
	</div>

	<h2>행사안내</h2>
	<hr width="70%">
	
	<div class="container">
		<div class="click">
				<div class="click-row">경복궁</div>
				<div class="click-row">덕수궁</div>
				<div class="click-row">창경궁</div>
				<div class="click-row">창덕궁</div>
			</div>
	</div>

	 <div class="date-wrap">
            <div class="date-month">
                <button type="button" id="month-prev" class="month-move"> 〈 </button>
                <span id="month-this"></span>
                <button type="button" id="month-next" class="month-move"> 〉 </button>     
            </div>
     </div>
     
     <div class="imageContainer"></div>
       
	<script src="${eventJS}"></script>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>