<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>manager_reservation_delete</title>

	<!-- Common CSS -->
	<%@ include file="/WEB-INF/views/managerViews/layout/jspf/commonCss.jspf" %>
	
	<!-- Page level CSS -->
	<c:url value="/resources/vendor/manager/datatables/dataTables.bootstrap4.css" var="dataTablesBootstrap4Css" />
	<link href="${dataTablesBootstrap4Css}" rel="stylesheet">
	
</head>

<body id="page-top">
	<div id="wrapper">
		
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/views/managerViews/layout/sidebar.jsp"></jsp:include>
		<!-- Sidebar -->
		
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				
				<!-- TopBar -->
				<jsp:include page="/WEB-INF/views/managerViews/layout/topbar.jsp"></jsp:include>
				<!-- TopBar -->

				<!-- Container Fluid-->
				<div class="container-fluid" id="container-wrapper">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">예약 취소</h1>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../index">Home</a></li>
							<li class="breadcrumb-item">예약</li>
							<li class="breadcrumb-item active" aria-current="page">취소</li>
						</ol>
					</div>

					<!-- Row -->
					<div class="row">

						<!-- 취소창 -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">예약 취소</h6>
								</div>
								<div class="card-body">
									<form action="/royal/YWRtaW5wYWdl/reservation/post/delete" method="post">
										<div class="form-group">
											<input type="text" class="form-control" id="resv_id" name="resv_id" placeholder="취소할 예약 ID">
										</div>
										<button type="button" id="submitBtn" class="btn btn-primary">취소하기</button>
										<input id="submitInput" type="submit" style="display: none;">
									</form>
								</div>
							</div>
						</div>

						<!-- DataTable with Hover -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">예약 현황</h6>
								</div>
								<div class="table-responsive p-3">
									<table class="table align-items-center table-flush table-hover" id="dataTableHover">
										<thead class="thead-light">
											<tr>
												<th>예약 ID</th>
												<th>행사 ID</th>
												<th>회원 ID</th>
												<th>예약 번호</th>
												<th>예약 날짜</th>
												<th>예약인원</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>예약 ID</th>
												<th>행사 ID</th>
												<th>회원 ID</th>
												<th>예약 번호</th>
												<th>예약 날짜</th>
												<th>예약인원</th>
											</tr>
										</tfoot>
										<tbody>
											<c:forEach items="${resvList}" var="resv">
												<tr>
													<td>${resv.resv_id}</td>
													<td>${resv.event_id}</td>
													<td>${resv.member_id}</td>
													<td>${resv.resv_num}</td>
													<fmt:formatDate var="formatResvDate" value="${resv.resv_date}" pattern="yyyy/MM/dd"/>
                                      				<td>${formatResvDate}</td>
													<td>${resv.resv_people}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!--Row-->
					
				</div>
				<!---Container Fluid-->

			</div>
			
			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/managerViews/layout/footer.jsp"></jsp:include>
			<!-- Footer -->
			
		</div>
	</div>

	<!-- Scroll to top -->
	<a class="scroll-to-top rounded" href="#page-top"> 
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Common JS -->
	<%@ include file="/WEB-INF/views/managerViews/layout/jspf/commonJs.jspf" %>
	
	<!-- Individual JS -->
	<c:url value="/resources/js/manager/reservation/delete.js" var="deleteJS" />
	<script src="${deleteJS}"></script>
	
	<!-- Page level plugins -->
	<c:url value="/resources/vendor/manager/datatables/jquery.dataTables.js" var="dataTablesJs" />
	<c:url value="/resources/vendor/manager/datatables/dataTables.bootstrap4.js" var="dataTablesBootstrap4Js" />
  	<script src="${dataTablesJs}"></script>
  	<script src="${dataTablesBootstrap4Js}"></script>
	
	<!-- Page level custom scripts -->
	<script>
		$(document).ready(function () {
		  $('#dataTable').DataTable(); // ID From dataTable 
		  $('#dataTableHover').DataTable(); // ID From dataTable with Hover
		});
	</script>
</body>

</html>