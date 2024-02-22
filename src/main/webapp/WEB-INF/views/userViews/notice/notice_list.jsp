<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_list</title>
<c:url value="/resources/css/communication/notice_list.css"
	var="notice_listCSS" />
<c:url value="/resources/css/communication/public_communication.css"
	var="public_communicationCSS" />
<c:url value="/resources/js/communication/communication_notice.js"
	var="communication_noticeJS" />
<c:url value="/resources/js/communication/notice.js" var="noticeJS" />
<link rel="stylesheet" href="${notice_listCSS}" />
<link rel="stylesheet" href="${public_communicationCSS}" />
<link rel="stylesheet" href="${communication_noticeJS}" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />

	<div class="top_img_name">
		<div>
			<img id="top_bg_Img"
				src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
		</div>
		<div id="sub_category_name">
			<h2>소통마당</h2>
		</div>
	</div>

	<div class="notice_title_BTN">
		<div id="notice_title_div">
			<h2 id="notice_title">공지사항</h2>
		</div>

		<div class="BTN_class">
			<div id="all_BTN" class="all">전 체</div>
			<div id="GB_BTN" class="GB">경복궁</div>
			<div id="DS_BTN" class="DS">덕수궁</div>
			<div id="CG_BTN" class="CG">창경궁</div>
			<div id="CD_BTN" class="CD">창덕궁</div>
			<div id="JM_BTN" class="JM">종 묘</div>
		</div>
		<div id="white_space"></div>
	</div>


	<div class="search_div">
		<div class="search_left">
			<div class="count_div">전체: ${page.total}개</div>
		</div>
		<form id="searchForm" action="/royal/communication/notice"
			method="POST">
			<div class="search_right">
				<select name="search_select_id" id="search_select_id">
					<option>전체</option>
					<option>제목</option>
					<option>내용</option>
				</select> <input type="text" name="search_input_id" id="search_input_id"
					placeholder="검색어를 입력해주세요.">
				<button type="submit">검색</button>
			</div>
		</form>
	</div>


	<div class="board_wrap">
		<div class="board_wrap_layout">
			<div>번호</div>
			<div>담당부서</div>
			<div>제목</div>
			<div>등록일</div>
		</div>
		<c:forEach items="${list}" var="notice">
			<div class="board_wrap_list">
				<c:set value="${notice.notice_id}" var="nid" />
				<div>${notice.notice_id}</div>
				<div>
					<c:choose>
						<c:when test="${notice.royal_id == 1}">
		                	경복궁
		            	</c:when>
						<c:when test="${notice.royal_id == 2}">
		                	창덕궁
		            	</c:when>
						<c:when test="${notice.royal_id == 3}">
		                	창경궁
		            	</c:when>
						<c:when test="${notice.royal_id == 4}">
		                	덕수궁
		            	</c:when>
						<c:when test="${notice.royal_id == 5}">
		                	종묘
		            	</c:when>
					</c:choose>
				</div>
				<a href="/royal/communication/notice_detail?notice_id=${nid}">${notice.notice_title}</a>
				<div>${notice.notice_date}</div>
			</div>
		</c:forEach>
	</div>

	<div class="bottom_paging">
		<!-- 검색이 아닐경우 -->
		<c:if test="${page.nowPage > 1}">
			<a href="/royal/communication/notice?nowPage=${page.nowPage - 1}&pagePostCnt=${page.pagePostCnt}&royal_id=${page.royal_id}">
				<span class="material-symbols-outlined">chevron_left</span>
			</a>
		</c:if>
		<c:forEach begin="${page.startPage}" end="${page.endPage}" var="p">
			<c:choose>
				<c:when test="${p == page.nowPage}">
					<a><b>${p}</b></a>
				</c:when>
				<c:when test="${p != page.nowPage}">
					<a class="pageNumber"
						href="/royal/communication/notice?nowPage=${p}&pagePostCnt=${page.pagePostCnt}&royal_id=${page.royal_id}">${p}</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${page.nowPage < page.lastPage}">
			<a href="/royal/communication/notice?nowPage=${page.nowPage + 1}&pagePostCnt=${page.pagePostCnt}&royal_id=${page.royal_id}">
				<span class="material-symbols-outlined">chevron_right</span>
			</a>
		</c:if>
	</div>

	<script src="${noticeJS}"></script>
	<script src="${communication_noticeJS}"></script>
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />

</body>
</html>