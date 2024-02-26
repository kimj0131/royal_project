<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서울고궁안내 > 마이페이지</title>
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
			<div class="commonMain">
				<div class="tit">기본정보</div>
				<div class="common_wrap">
				<div class="common_wrap_layout">
					<div class="common_wrap_layout1">
						<div class="boldStyle">이  름</div>
						<div>${mypageDTO.member_name}</div>
					</div>
					
					<div class = "noneDiv"></div>
					<div class="common_wrap_layout2">
						<div class="boldStyle">로그인 종류</div>
						<div>${mypageDTO.member_type}</div>
						</div>
					</div>
				</div>
			</div>


			<div class="reservationMain">
				<div class="tit">예약내역</div>
				<div class="board_wrap">
					<div class="reservboard_wrap_layout">
						<div class="boldStyle">예약번호</div>
						<div class="boldStyle">행사명</div>
						<div class="boldStyle">날짜 및 시간</div>
						<div class="boldStyle">인원</div>
						<div class="boldStyle">예약취소</div>
					</div>
					<c:forEach items="${reservList}" var="reserv">
						<div class="reservboard_wrap_list">
							<div>${reserv.resv_num}</div>
							<div>${reserv.event_name}</div>
							<div>
								<span class = "resv_eventdate"><fmt:formatDate value="${reserv.resv_eventdate}"
									pattern="yyyy-MM-dd" /></span> <span class="event_time">${reserv.event_time} </span>
							</div>
							<div>${reserv.resv_people}</div>
							<div>
								<button class="deleteBtn" style="font-size:18px;">
									<input type="hidden" value="${reserv.resv_num }">예약 취소 
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
						<div class="boldStyle">번호</div>
						<div class="boldStyle">제목</div>
						<div class="boldStyle">내용</div>
						<div class="boldStyle">작성일</div>
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
								<br>
								<div class="answer"  style="white-space:pre-wrap;"><c:out value="${qna.qna_result}" /></div>
	
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