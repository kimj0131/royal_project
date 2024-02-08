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

		<title>manager_index</title>

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
						</div>

						<div class="row mb-3">
							<!-- Invoice Example -->
							<div class="col-xl-8 col-lg-7 mb-4">
								<div class="card">
									<div
										class="card-header py-3 d-flex flex-row align-items-center justify-content-between"
									>
										<h6 class="m-0 font-weight-bold text-primary">QnA</h6>
										<a class="m-0 float-right btn btn-danger btn-sm" href="/royal/YWRtaW5wYWdl/qna">
											더보기
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
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${QNAList}" var="qna" begin="0" end="9">
													<tr>
														<td>
															<a href="/royal/YWRtaW5wYWdl/qna?qna_id=${qna.qna_id}"
																>${qna.qna_id}</a
															>
														</td>
														<td>${qna.qna_title}</td>
														<fmt:formatDate
															value="${qna.qna_date}"
															pattern="yyyy/MM/dd"
															var="qnaDate"
															type="date"
														/>
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
														<td>
															<a
																href="/royal/YWRtaW5wYWdl/qna?qna_id=${qna.qna_id}"
																class="btn btn-sm btn-primary"
																>자세히</a
															>
														</td>
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
									<div
										class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between"
									>
										<h6 class="m-0 font-weight-bold text-light">Message From Customer</h6>
									</div>
									<div>
										<div class="customer-message align-items-center">
											<a class="font-weight-bold" href="#">
												<div class="text-truncate message-title">
													Hi there! I am wondering if you can help me with a problem I've been
													having.
												</div>
												<div class="small text-gray-500 message-time font-weight-bold">
													Udin Cilok · 58m
												</div>
											</a>
										</div>
										<div class="customer-message align-items-center">
											<a href="#">
												<div class="text-truncate message-title">
													But I must explain to you how all this mistaken idea
												</div>
												<div class="small text-gray-500 message-time">Nana Haminah · 58m</div>
											</a>
										</div>
										<div class="customer-message align-items-center">
											<a class="font-weight-bold" href="#">
												<div class="text-truncate message-title">
													Lorem ipsum dolor sit amet, consectetur adipiscing elit
												</div>
												<div class="small text-gray-500 message-time font-weight-bold">
													Jajang Cincau · 25m
												</div>
											</a>
										</div>
										<div class="customer-message align-items-center">
											<a class="font-weight-bold" href="#">
												<div class="text-truncate message-title">
													At vero eos et accusamus et iusto odio dignissimos ducimus qui
													blanditiis
												</div>
												<div class="small text-gray-500 message-time font-weight-bold">
													Udin Wayang · 54m
												</div>
											</a>
										</div>
										<div class="card-footer text-center">
											<a class="m-0 small text-primary card-link" href="#">
												View More
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

		<!-- Chart JS -->
		<c:url value="/resources/vendor/manager/chart.js/Chart.min.js" var="ChartMinJs" />
		<c:url value="/resources/js/manager/demo/chart-area-demo.js" var="chartAreaDemoJs" />
		<script src="${ChartMinJs}"></script>
		<script src="${chartAreaDemoJs}"></script>
	</body>
</html>
