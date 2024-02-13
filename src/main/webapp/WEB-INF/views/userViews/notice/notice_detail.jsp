<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_detail</title>
<c:url value="/resources/css/communication/public_communication.css"
	var="public_communicationCSS" />
<c:url value="/resources/css/communication/notice_detail.css"
	var="notice_detailCSS" />
<c:url value="/resources/image/communication/notice_dateIMG.png"
	var="notice_dateIMG" />
<c:url value="/resources/image/communication/royal_idIMG.png"
	var="royal_idIMG" />
	<link rel="stylesheet" href="${public_communicationCSS}" />
	<link rel="stylesheet" href="${notice_detailCSS}" />
	<link rel="stylesheet" href="${notice_dateIMG}" />
	<link rel="stylesheet" href="${royal_idIMG}" />
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
	</div>
	${noticeList}
	

			<div class="board_wrap_list">
				<div id="board_detail_title">${noticeDTO.notice_title}</div> 
				<div id="board_detail_info">
					<div style="padding-left: 10px ">
					<img src="${royal_idIMG}" />
						<c:choose>
							<c:when test="${noticeDTO.royal_id == 1}">
			                	경복궁
			            	</c:when>
							<c:when test="${noticeDTO.royal_id == 2}">
			                	창덕궁
			            	</c:when>
							<c:when test="${noticeDTO.royal_id == 3}">
			                	창경궁
			            	</c:when>
							<c:when test="${noticeDTO.royal_id == 4}">
			                	덕수궁
			            	</c:when>
							<c:when test="${noticeDTO.royal_id == 5}">
			                	종묘
			            	</c:when>
						</c:choose>
					</div>
					<div id="board_detail_info_space">|</div>
				<div><img src="${notice_dateIMG}" />${noticeDTO.notice_date}</div>
				</div>
				<div>${noticeDTO.notice_content}</div>
			</div>
	</div>

	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>