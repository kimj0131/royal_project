<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	
	<title>질문과 답변</title>
	
	<!-- Icons -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	
	<!-- Common CSS -->
	<%@ include
		file="/WEB-INF/views/managerViews/layout/jspf/commonCss.jspf"%>
	
	<!-- Individual CSS -->
	<c:url value="/resources/css/manager/qna/qna_update.css"
		var="qnaUpdateCSS" />
	<link href="${qnaUpdateCSS}" rel="stylesheet" />
	
	<!-- Page level CSS -->
	<c:url
		value="/resources/vendor/manager/datatables/dataTables.bootstrap4.css"
		var="dataTablesBootstrap4Css" />
	<link href="${dataTablesBootstrap4Css}" rel="stylesheet" />
	
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
						<h1 class="h3 mb-0 text-gray-800">QnA 답변 추가</h1>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/royal/manage/main/index">Home</a></li>
							<li class="breadcrumb-item">QnA</li>
							<li class="breadcrumb-item active" aria-current="page">답변</li>
						</ol>
					</div>

					<!-- Row -->
					<div class="row">
						<!-- 답변 Form -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">QnA 답변 추가</h6>
								</div>
								<div class="card-body">
									<form id="qna_answer" action="/royal/manage/main/from/qna/answered/" method="post">
										<div class="fg_custom_wrapper">
											<div class="fg_custom">
												<div class="form-group">
													<label for="qna_title">제목</label> <input
														id="selected_title" type="text"
														class="form-control fc_custom" name="qna_title" disabled />
												</div>
												<div class="form-group">
													<label for="qna_content">내용</label>
													<textarea id="selected_content"
														class="form-control fc_custom" name="qna_content" disabled></textarea>
												</div>
											</div>
											<div class="fg_custom2">
												<div class="form-group">
													<label for="event_imgpath">답변</label>
													<textarea cols="30" rows="15" id="qna_result"
														class="form-control fc_custom" name="qna_result"></textarea>
												</div>
											</div>
										</div>
										<input id="selected_id" type="hidden" value="" name="qna_id" />
										<button class="btn btn-primary subBtn">답변달기</button>
									</form>
								</div>
							</div>
						</div>

						<!-- DataTable with Hover -->
						<div class="col-lg-12">
							<div class="card mb-4">
								<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">QnA 목록</h6>
									<span style="font-size: 15px; font-weight: bold; ">※ 아래 질문을 클릭하면 답변을 달 수 있습니다.</span>
								</div>
								<div class="table-responsive p-3">
									<table class="table align-items-center table-flush table-hover" id="dataTableHover">
										<thead class="thead-light">
											<tr>
												<th>번호</th>
												<th>작성자</th>
												<th>제목</th>
												<th>작성일</th>
												<th>답변여부</th>
												<th hidden>내용</th>
												<th hidden>답변</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${QNAList}" var="qna">
												<tr class="tableRowData">
													<td class="qnaId" style="word-break: break-all">${qna.qna_id}</td>
													<td class="qnaName" style="word-break: break-all">${memberNameMap[qna.member_id]}</td>
													<td class="qnaTitle" style="word-break: break-all">${qna.qna_title}</td>
													<fmt:formatDate value="${qna.qna_date}" pattern="yyyy년 MM월 dd일" var="qnaDate" type="date" />
													<td style="word-break: break-all">${qnaDate}</td>
													<c:choose>
														<c:when test="${empty qna.qna_result}">
															<td><span class="badge badge-danger">답변 전</span></td>
														</c:when>
														<c:otherwise>
															<td><span class="badge badge-success">답변완료</span></td>
														</c:otherwise>
													</c:choose>
													<td class="qnaContent" style="word-break: break-all" hidden>${qna.qna_content}</td>
													<td class="qnaResult" style="word-break: break-all" hidden>${qna.qna_result}</td>
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
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Common JS -->
	<%@ include
		file="/WEB-INF/views/managerViews/layout/jspf/commonJs.jspf"%>

	<!-- Individual JS -->
	<c:url value="/resources/js/manager/qna/qna_update.js" var="updateJS" />
	<script src="${updateJS}"></script>

	<!-- Page level plugins -->
	<c:url
		value="/resources/vendor/manager/datatables/jquery.dataTables.js"
		var="dataTablesJs" />
	<c:url
		value="/resources/vendor/manager/datatables/dataTables.bootstrap4.js"
		var="dataTablesBootstrap4Js" />
	<script src="${dataTablesJs}"></script>
	<script src="${dataTablesBootstrap4Js}"></script>

	<!-- Page level custom scripts -->
	<script>
		$(document).ready(function() {
			$("#dataTable").DataTable(); // ID From dataTable
			$("#dataTableHover").DataTable(); // ID From dataTable with Hover
		});
	</script>
</body>
</html>
