<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<c:url value="/resources/css/mypage/mypage.css" var="mypageCSS" />
<link rel="stylesheet" href="${mypageCSS}" />

<c:url value="/resources/js/mypage/mypage.js" var="mypageJS" />
<link rel="stylesheet" href="${mypageJS}" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />

	<div class="wrap">
			<div class="top_img_name">
				<div>
					<img id="top_bg_Img"
						src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
				</div>
				<div id="sub_category_name">
					<h2>마이페이지</h2>
				</div>
			</div>

			<div class="inner">
				<div class="reservationMain">
					<div class="tit">예약내역</div>
					<div class="board_wrap">
						<div class="reservboard_wrap_layout">
							<div>예약번호</div>
							<div>행사명</div>
							<div>날짜 및 시간</div>
							<div>인원</div>
							<div>비고</div>
						</div>
						<c:forEach items="${reservList}" var="reserv">
							<div class="reservboard_wrap_list">
								<div>${reserv.resv_num}</div>
								<div>${reserv.event_name}</div>
								<div>
									<fmt:formatDate value="${reserv.resv_date}"
										pattern="yyyy-MM-dd HH:mm" />
								</div>
								<div>${reserv.resv_people}</div>
								<div>
									<button class="deleteBtn">
										<input type="hidden" value="${reserv.resv_num }">예약취소
									</button>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>


				<div class="QnaMain">
					<div class="tit">내가 작성한 Q&A</div>
					<div class="board_wrap">
						<div class="board_wrap_layout">
							<div>번호</div>
							<div>제목</div>
							<div>내용</div>
							<div>작성일</div>
						</div>
						<c:forEach items="${qnaList}" var="qna" varStatus="status">
							<div class="board_wrap_list">
								<div>${qna.qna_id}</div>

								<!-- 제목만 눌렀을때 내용열리는 script와 눌렀을떄 내용 열리는 script 포함 -->
								<div>${qna.qna_title}</div>
								<div class="qna-title" onclick="toggleContent(${status.index})">
									<span class="clickable-text">${qna.qna_content}</span> <span
										class="material-symbols-outlined"
										id="arrow-icon-${status.index}"> arrow_drop_down </span>
								</div>
								<div>
									<fmt:formatDate value="${qna.qna_date}"
										pattern="yyyy-MM-dd HH:mm" />
								</div>

							</div>
							<div class="qna-result hidden" id="qna-result-${status.index}">
								<div id="innerQna">
									<div class="answer-text">Q&A 답변</div>
									<br> &nbsp;${qna.qna_result}
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${mypageJS}"></script>
</body>
</html>