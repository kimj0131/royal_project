<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<!-- Sidebar -->
<ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">	
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/royal/YWRtaW5wYWdl/index">
		<div class="sidebar-brand-icon">
			<img src="img/logo/logo2.png">
		</div>
		<div class="sidebar-brand-text mx-3">대한민궁</div>
	</a>
	
	<hr class="sidebar-divider my-0">
	
	<li class="nav-item active">
		<a class="nav-link" href="/royal/YWRtaW5wYWdl/index"> 
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
				<a class="collapse-item" href="/royal/YWRtaW5wYWdl/reservation/delete">삭제</a>
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
				<a class="collapse-item" href="/royal/YWRtaW5wYWdl/event/insert">추가</a> 
				<a class="collapse-item" href="/royal/YWRtaW5wYWdl/event/update">수정</a>
				<a class="collapse-item" href="/royal/YWRtaW5wYWdl/event/delete">삭제</a>
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
				<a class="collapse-item" href="simple-tables.html">추가</a>
				<a class="collapse-item" href="simple-tables.html">수정</a>
				<a class="collapse-item" href="simple-tables.html">삭제</a>
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
				<a class="collapse-item" href="simple-tables.html">답변</a>
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
				<a class="collapse-item" href="simple-tables.html">추가</a>
				<a class="collapse-item" href="simple-tables.html">수정</a>
				<a class="collapse-item" href="simple-tables.html">삭제</a>
			</div>
		</div>
	</li>
	
</ul>
<!-- Sidebar -->