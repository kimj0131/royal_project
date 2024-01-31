<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/resources/js/managerViews/navibar.js" var="navibarJS" />

<div id="navibar">
	<button id="summaryBtn">요약</button>
	<button id="reservationBtn">예약관리</button>
	<button id="eventBtn">행사관리</button>
	<button id="qnaBtn">QnA관리</button>
	<button id="noticeBtn">공지사항</button>
</div>

<script src="${navibarJS}">

</script>
   
  
