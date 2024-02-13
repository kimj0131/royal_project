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
	
	<title>manager_event_insert</title>

	<!-- Icons -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

	<!-- Common CSS -->
	<%@ include file="/WEB-INF/views/managerViews/layout/jspf/commonCss.jspf" %>
	
	<!-- Individual CSS -->
	<c:url value="/resources/css/manager/event/event.css" var="eventCss" />
	<link href="${eventCss}" rel="stylesheet">
	
	<!-- Page level CSS -->
	<c:url value="/resources/vendor/manager/datatables/dataTables.bootstrap4.css" var="dataTablesBootstrap4Css" />
	<link href="${dataTablesBootstrap4Css}" rel="stylesheet">
	
	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
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
						<h1 class="h3 mb-0 text-gray-800">행사 수정</h1>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../index">Home</a></li>
							<li class="breadcrumb-item">행사</li>
							<li class="breadcrumb-item active" aria-current="page">수정</li>
						</ol>
					</div>

					<!-- Row -->
					<div class="row">

						<!-- 수정창 -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 id="selected_event_title" class="m-0 font-weight-bold text-primary">수정할 행사 ID를 선택해주세요</h6>
								</div>
								<div class="card-body">
									<form action="/royal/manage/main/event/post/update" method="post">
										<input id="selected_event_hidden" name="selected_event" type="hidden">
										<div class="fg_custom_wrapper">
											<div class="fg_custom1">
												<div class="form-group">
													<label for="royal_id">궁</label>
													<select id="selected_royal" name="royal_id" class="form-control fc_custom">
														<option value="1">경복궁</option>
														<option value="2">창덕궁</option>
														<option value="3">창경궁</option>
														<option value="4">덕수궁</option>
														<option value="5">종묘</option>
													</select>
												</div>
												<div class="form-group">
													<label for="event_type">행사 유형</label>
													<select id="selected_type" name="event_type" class="form-control fc_custom">
														<option value="해설">해설</option>
														<option value="행사">행사</option>
													</select>
												</div>
												<div class="form-group">
													<label for="event_name">행사 이름</label>
													<input id="selected_name" type="text" class="form-control fc_custom" name="event_name" 
														placeholder="이름">
												</div>
												<div class="form-group">
													<label for="event_location">행사 장소</label>
													<input id="selected_location" type="text" class="form-control fc_custom" name="event_location" 
														placeholder="주소">
												</div>
												<div class="form-group">
													<label for="start_date">시작일</label>
													<input id="selected_start_date" type="date" class="form-control fc_custom" name="start_date" id="start_date">
												</div>
												<div class="form-group">
													<label for="end_date">종료일</label>
													<input id="selected_end_date" type="date" class="form-control fc_custom" name="end_date" id="end_date">
												</div>
												<div class="form-group">
													<label for="event_link">행사 사이트</label>
													<input id="selected_link" type="text" class="form-control fc_custom" name="event_link" 
														placeholder="사이트 주소">
												</div>
												<div class="form-group">
													<label for="event_imgpath">행사 사진</label>
													<input  id="selected_imgpath" type="text" class="form-control fc_custom" name="event_imgpath" 
														placeholder="사진 경로">
												</div>
												<div class="form-group">
													<label for="reservable">예약가능 여부</label>
													<select id="selected_reservable" name="reservable" class="form-control fc_custom">
														<option value="Y">가능</option>
														<option value="N">불가</option>
													</select>
												</div>
												<div class="form-group">
													<label for="reservable">회차별 인원수</label>
													<input id="selected_capacity" type="number" class="form-control fc_custom" name="round_capacity" min="0" value="0">
												</div>
											</div>
											
											<div class="fg_custom2">
												<div class="form-group">
													<label for="reservable" style="margin-right: 7px">회차 설정</label>
													
													<!-- 더하기 버튼 -->
													<button type="button" class="btn btn-success mb-1 btn-custom plusBtn">
														<span style="font-size: 20px;" class="material-symbols-outlined">add</span>
													</button>
									              	
									              	<!-- 빼기 버튼 -->
									              	<button type="button" class="btn btn-warning mb-1 btn-custom minusBtn">
														<span style="font-size: 20px;" class="material-symbols-outlined">remove</span>
													</button>
													
													<!-- 회차 칸 -->
													
												</div>
											
											</div>
										</div>
										<!-- js에서 유효성 검사 -->
										<button type="button" id="submitBtn" class="btn btn-primary">수정하기</button>
										<input id="submitInput" type="submit" style="display: none;">
									</form>
								</div>
							</div>
						</div>

						<!-- DataTable with Hover -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">행사 현황</h6>
									<span style="font-size: 15px; font-weight: bold; ">※ 수정할 행사 ID를 선택해주세요.</span>
								</div>
								<div class="table-responsive p-3">
									<table class="table align-items-center table-flush table-hover" id="dataTableHover">
										<thead class="thead-light">
											<tr>
												<th>ID</th>
												<th>행사유형</th>
												<th>행사이름</th>
												<th>행사장소</th>
												<th>시작일</th>
												<th>종료일</th>
												<!-- <th>사이트</th> -->
												<th>예약가능</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
												<th>ID</th>
												<th>행사유형</th>
												<th>행사이름</th>
												<th>행사장소</th>
												<th>시작일</th>
												<th>종료일</th>
												<!-- <th>사이트</th> -->
												<th>예약가능</th>
											</tr>
										</tfoot>
										<tbody>
											<c:forEach items="${eventList}" var="event">
												<tr id="${event.event_id}" class="tableRowData">
													<td style="word-break:break-all">${event.event_id}</td>
													<td style="word-break:break-all">${event.event_type}</td>
													<td style="word-break:break-all">${event.event_name}</td>
													<td style="word-break:break-all">${event.event_location}</td>
													
													<fmt:formatDate var="formatStartDate" value="${event.start_date}" pattern="yyyy/MM/dd"/>
                                      				<td>${formatStartDate}</td>
                                       				<fmt:formatDate var="formatEndDate" value="${event.end_date}" pattern="yyyy/MM/dd"/>
                                       				<td>${formatEndDate}</td>
				
													<%-- <td width="200px" style="word-break:break-all">${event.event_link}</td> --%>
													<td width="100px" style="word-break:break-all">${event.reservable}</td>
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
	<c:url value="/resources/js/manager/event/update.js" var="updateJS" />
	<script src="${updateJS}"></script>
	
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