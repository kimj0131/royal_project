<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<!-- IMG -->
<c:url value="/resources/image/manager/man.png" var="manIMG" />
<c:url value="/resources/image/manager/boy.png" var="boyIMG" />
<c:url value="/resources/image/manager/girl.png" var="girlIMG" />

<nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
	<!-- Topbar -->
	<button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>
	<ul class="navbar-nav ml-auto">
		<li class="nav-item dropdown no-arrow mx-1">
			<a
				class="nav-link dropdown-toggle"
				href="#"
				id="alertsDropdown"
				role="button"
				data-toggle="dropdown"
				aria-haspopup="true"
				aria-expanded="false"
			>
				<i class="fas fa-bell fa-fw"></i>
				<span class="badge badge-danger badge-counter">${emptyResultQNAList.size()}+</span>
			</a>
			<div
				class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="alertsDropdown"
			>
				<!-- 미확인 알람 -->
				<h6 class="dropdown-header">알림</h6>

				<a class="dropdown-item d-flex align-items-center" href="/royal/manage/main/qna/form/add">
					<div class="mr-3">
						<div class="icon-circle bg-warning">
							<i class="fas fa-exclamation-triangle text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">${nowDate}</div>
						답변이 필요한 QnA : ${emptyResultQNAList.size()} 건
					</div>
				</a>
				<a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
			</div>
		</li>

		<div class="topbar-divider d-none d-sm-block"></div>

		<li class="nav-item dropdown no-arrow">
			<a
				class="nav-link dropdown-toggle"
				href="#"
				id="userDropdown"
				role="button"
				data-toggle="dropdown"
				aria-haspopup="true"
				aria-expanded="false"
			>
				<img class="img-profile rounded-circle" src="${manIMG}" style="max-width: 60px" />
				<span class="ml-2 d-none d-lg-inline text-white small">관리자</span>
			</a>
			<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
				<a class="dropdown-item" href="javascript:void(0);" data-toggle="modal" data-target="#logoutModal">
					<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					로그아웃
				</a>
			</div>
		</li>
	</ul>
</nav>

<!-- Modal Logout -->
<div
	class="modal fade"
	id="logoutModal"
	tabindex="-1"
	role="dialog"
	aria-labelledby="exampleModalLabelLogout"
	aria-hidden="true"
>
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabelLogout">관리자 로그아웃</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>정말 로그아웃 하시겠습니까?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-primary" data-dismiss="modal">취소</button>
				<a href="/royal/manage/logout" class="btn btn-primary">로그아웃</a>
			</div>
		</div>
	</div>
</div>
