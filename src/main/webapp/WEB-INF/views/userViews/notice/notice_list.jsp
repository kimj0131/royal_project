<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<c:url value="/resources/css/communication/notice.css" var="noticeCSS" />
<c:url value="/resources/css/communication/public_communication.css"
	var="public_communicationCSS" />
<c:url value="/resources/js/communication/public_communication.js"
	var="public_communicationJS" />
<link rel="stylesheet" href="${noticeCSS}" />
<link rel="stylesheet" href="${public_communicationCSS}" />
<link rel="stylesheet" href="${public_communicationJS}" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />

	<div class="top_img_name">
		<div>
			<img id="top_bg_Img"
				src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
		</div>
		<div id="sub_category_name">
			<h2>소 통</h2>
		</div>
	</div>

	<div class="notice_title_BTN">
		<div id="notice_title_div">
			<h2 id="notice_title">공지사항</h2>
		</div>

		<div class="BTN_class">
			<div id="all_BTN" class="all on">전 체</div>
			<div id="GB_BTN" class="GB">경복궁</div>
			<div id="DS_BTN" class="DS">덕수궁</div>
			<div id="CG_BTN" class="CG">창경궁</div>
			<div id="CD_BTN" class="CD">창덕궁</div>
			<div id="JM_BTN" class="JM">종 묘</div>
		</div>
	</div>

	<div id="white_space"></div>

	<div class="search_div">
		<div class="search_left">
			<div class="count_div">전체: **개</div>
		</div>
		<form name="listForm" id="listForm" method="post" onsubmit="fn_search(); return false;">
			<div class="search_right">
				<select name="search_select_id" id="search_select_id" title="구분">
					<option>전체</option>
					<option>제목</option>
					<option>내용</option>
				</select>
				<input type="text" name="search_input_id" id="search_input_id" value title="검색어를 입력해 주세요" placeholder="검색어를 입력해주세요.">
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
			<div>조회수</div>
		</div>
    	<c:forEach items="${noticeList}" var="notice">
			<div class="board_wrap_list">
		        <div>${notice.notice_id}</div>
		        <div><c:choose>
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
		        </c:choose></div>
		        <a>${notice.notice_title}</a>
		        <div>${notice.notice_date}</div>
		        <div></div>
			</div>
    	</c:forEach>
	</div>

	<script src="${public_communicationJS}"></script>
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>