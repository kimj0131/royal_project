<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
	// 로그인 상태 확인 변수 설정
	String login_admin = (String) session.getAttribute("login_admin");
%>
<!-- 세션에 로그인 정보가 없으면 알람을 띄우고 로그인화면으로 보냄 -->
<c:if test="${empty login_admin}">
	<script>
		alert("정상적인 접근이 아닙니다");
		location.href='/royal/manage/login';
	</script>
</c:if>

<!-- IMG -->
<%-- <c:url value="/resources/image/manager/logo/logo2.png" var="logoIMG" /> --%>
<c:url value="/resources/image/layout/logo.png" var="logoIMG" />

<!-- Icons -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<!-- Sidebar -->
<ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">	
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/royal/manage/main/index">
		<div class="sidebar-brand-icon">
			<img src="${logoIMG}">
		</div>
		<div class="sidebar-brand-text mx-3">고궁 안내</div>
	</a>
	
	<hr class="sidebar-divider my-0">
	
	<li class="nav-item active">
		<a class="nav-link" href="/royal/manage/main/index"> 
			<i class="fas fa-fw fa-tachometer-alt" ></i> 
			<span>관리자 페이지</span>
		</a>
	</li>
	
	<hr class="sidebar-divider">
	
	<div class="sidebar-heading">Features</div>
	
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReservation" aria-expanded="true" aria-controls="collapseReservation"> 
			<i style="font-size: 20px; vertical-align: middle;" class="material-symbols-outlined">event_available</i>
			<span style="vertical-align: middle;">예약</span>
		</a>
		<div id="collapseReservation" class="collapse" aria-labelledby="headingForm" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">예약관리</h6>
				<a class="collapse-item" href="/royal/manage/main/reservation/form/list">목록</a>
				<a class="collapse-item" href="/royal/manage/main/reservation/form/delete">취소</a>
			</div>
		</div>
	</li>
	
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseEvent" aria-expanded="true" aria-controls="collapseEvent"> 
			<i style="font-size: 20px; vertical-align: middle;" class="material-symbols-outlined">festival</i>
			<span style="vertical-align: middle;">행사</span>
		</a>
		<div id="collapseEvent" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">행사관리</h6>
				<a class="collapse-item" href="/royal/manage/main/event/form/list">목록</a> 
				<a class="collapse-item" href="/royal/manage/main/event/form/insert">추가</a> 
				<a class="collapse-item" href="/royal/manage/main/event/form/update">수정</a>
				<a class="collapse-item" href="/royal/manage/main/event/form/delete">취소</a>
			</div>
		</div>
	</li>
	
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFAQ" aria-expanded="true" aria-controls="collapseFAQ"> 
			<i style="font-size: 20px; vertical-align: middle;" class="material-symbols-outlined">help</i>
			<span style="vertical-align: middle;">자주 묻는 질문</span>
		</a>
		<div id="collapseFAQ" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">자주 묻는 질문 관리</h6>
				<a class="collapse-item" href="/royal/manage/main/faq/form/list">목록</a>
				<a class="collapse-item" href="/royal/manage/main/faq/form/insert">추가</a>
				<a class="collapse-item" href="/royal/manage/main/faq/form/update">수정</a>
				<a class="collapse-item" href="/royal/manage/main/faq/form/delete">삭제</a>
			</div>
		</div>
	</li>
	
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseQnA" aria-expanded="true" aria-controls="collapseQnA"> 
			<i style="font-size: 20px; vertical-align: middle;" class="material-symbols-outlined">edit_square</i>
			<span style="vertical-align: middle;">질문과 답변</span>
		</a>
		<div id="collapseQnA" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">질문과 답변 관리</h6>
				<a class="collapse-item" href="/royal/manage/main/qna/form/">답변 달기</a>
			</div>
		</div>
	</li>
	
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseNotice" aria-expanded="true" aria-controls="collapseNotice"> 
			<i style="font-size: 20px; vertical-align: middle;" class="material-symbols-outlined">campaign</i>
			<span style="vertical-align: middle;">공지사항</span>
		</a>
		<div id="collapseNotice" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">공치사항 관리</h6>
				<a class="collapse-item" href="/royal/manage/main/notice/form/list">목록</a>
				<a class="collapse-item" href="/royal/manage/main/notice/form/insert">추가</a>
				<a class="collapse-item" href="/royal/manage/main/notice/form/update">수정</a>
				<a class="collapse-item" href="/royal/manage/main/notice/form/delete">삭제</a>
			</div>
		</div>
	</li>

</ul>
<!-- Sidebar -->