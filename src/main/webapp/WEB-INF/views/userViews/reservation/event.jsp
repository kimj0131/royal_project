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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="${eventCSS}" />
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />


	<h2>행사안내</h2>
	<hr width="70%">
	
	<div class="container">
		<div class="click">
				<div class="click-row1">경복궁</div>
				<div class="click-row2">덕수궁</div>
				<div class="click-row3">창경궁</div>
				<div class="click-row4">창덕궁</div>
			</div>
			
			<!-- 
			<div class="date">
			<a href=""> <div>《&nbsp;</div></a> 
			<div class="year">2024
			</div><div>.</div>
			<div class="month">2</div>
			<a href=""><div>&nbsp;》</div></a> 
		</div>
			 -->
		
		 
	<div class="sec_cal">
		  <div class="cal_nav">
		    <a href="javascript:;" class="nav-btn go-prev">prev</a>
		    <div class="year-month"></div>
		    <a href="javascript:;" class="nav-btn go-next">next</a>
		  </div>
	</div>
	
		  <!-- 
		  <div class="cal_wrap">
		    <div class="days">
		      <div class="day">SUN</div>
		      <div class="day">MON</div>
		      <div class="day">TUE</div>
		      <div class="day">WED</div>
		      <div class="day">THU</div>
		      <div class="day">FRI</div>
		      <div class="day">SAT</div>
		    </div>
		   <div class="dates"></div>
		  </div>
		   -->

	<script src="${eventJS}"></script>
	
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>