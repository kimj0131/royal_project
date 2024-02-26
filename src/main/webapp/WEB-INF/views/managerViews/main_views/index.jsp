<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />

		<title>서울고궁안내 - 관리자>메인</title>

		<!-- Common CSS -->
		<%@ include file="/WEB-INF/views/managerViews/layout/jspf/commonCss.jspf" %>
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
							<h1 class="h3 mb-0 text-gray-800">확인할 업무</h1>
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="/royal/manage/main/index">Home</a></li>
							</ol>
							
						</div>

						<div class="row mb-3">
							<!-- Invoice Example -->
							<div class="col-xl-8 col-lg-7 mb-4">
								<div class="card">
									<div
										class="card-header py-3 d-flex flex-row align-items-center justify-content-between"
									>
										<h6 class="m-0 font-weight-bold text-primary">QnA</h6>
										<h6 class="m-0 font-weight-bold text-primary">답변을 기다리고 있는 질문</h6>
										<a class="m-0 float-right btn btn-danger btn-sm" href="/royal/manage/main/qna/form/add">
											답변 달기
											<i class="fas fa-chevron-right"></i>
										</a>
									</div>
									<div class="table-responsive">
										<table class="table align-items-center table-flush">
											<thead class="thead-light">
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>작성일</th>
													<th>답변</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${emptyResultQNAList}" var="qna" begin="0" end="9">
													<tr>
														<td>${qna.qna_id}</td>
														<td>${qna.qna_title}</td>
														<fmt:formatDate	value="${qna.qna_date}" pattern="yyyy/MM/dd" var="qnaDate" type="date" />
														<td>${qnaDate}</td>
														<c:choose>
															<c:when test="${empty qna.qna_result}">
																<td><span class="badge badge-danger">답변 전</span></td>
															</c:when>
															<c:otherwise>
																<td>
																	<span class="badge badge-success">답변완료</span>
																</td>
															</c:otherwise>
														</c:choose>
														
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="card-footer"></div>
								</div>
							</div>

							<!-- Message From Customer-->
							<div class="col-xl-4 col-lg-5">
								<div class="card">
									<div class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between">
										<h6 class="m-0 font-weight-bold text-light">30일내 시작하는 행사</h6>
									</div>
									<div>
										<c:forEach items="${eventList30Days}" var="event" begin="0" end="7">
											<div class="customer-message align-items-center">
												<a class="font-weight-bold" href="${event.event_link}">
													<div class="text-truncate message-title">
														${event.event_name}
													</div>
													<fmt:formatDate	value="${event.start_date}" pattern="yyyy/MM/dd" var="eventStratDate" type="date" />
													<div class="small text-gray-500 message-time font-weight-bold">
														${event.event_location} - ${eventStratDate}
													</div>
												</a>
											</div>
										</c:forEach>
										<div class="card-footer text-center">
											<a class="m-0 small text-primary card-link" href="/royal/manage/main/event/form/list">
												모두 보기
												<i class="fas fa-chevron-right"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
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
	</body>
</html>
