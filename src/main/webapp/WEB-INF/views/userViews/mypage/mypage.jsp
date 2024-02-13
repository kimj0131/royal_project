<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<c:url value="/resources/css/mypage/mypage.css" var="mypageCSS" />


<link rel="stylesheet" href="${mypageCSS}" />

</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />

	<div class="top_img_name">
		<div>
			<img id="top_bg_Img"
				src="https://royal.cha.go.kr/resource/templete/royal/img/sub/bg_sub06.jpg">
		</div>
		<div id="sub_category_name">
			<h2>마이페이지</h2>
		</div>
	</div>
	<div class="reservationList">
		<div id="reserv_title">
			<h2 id="notice_title">기본정보</h2>

		</div>
	</div>

	<div class="commonInfo">
		<div class="commonInfo_layout">
			<div class="commonInfo_wrap_layout">
				<div id="loginName">이 름</div>
				<div id="loginNameValue">
					${mypageDTO.member_name}
				</div>
				<div id="loginType">로그인 종류</div>
				<div id="loginTypeValue">
					
						${mypageDTO.member_type}
				</div>

			</div>
		</div>
	</div>

	<div class="reservationList">
		<div id="reserv_title">
			<h2 id="notice_title">예약내역</h2>

		</div>

	</div>
	<div class="reservboard_wrap">
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
				<div><fmt:formatDate value="${reserv.resv_date}" pattern="yyyy-MM-dd HH:mm"/></div>
				<div>${reserv.resv_people}</div>
				<div><input type="submit" value="예약취소"></div>
			</div>
		</c:forEach>
	</div>
	

<div class="notice_title_BTN">
		<div id="notice_title_div">
			<h2 id="notice_title">내가 작성한 Q&A</h2>
		</div>
	</div>

	<div id="white_space"></div>


	

	<div class="board_wrap">
		<div class="board_wrap_layout">
			<div>번호</div>
			<div>제목</div>
			<div>내용</div>
			<div>작성일</div>

		</div>
		<c:forEach items="${qnaList}" var="qna">
			<div class="board_wrap_list">
				<div>${qna.qna_id}</div>
				<div>${qna.qna_title}</div>
				<div>${qna.qna_content}</div>
				<div><fmt:formatDate value="${qna.qna_date}" pattern="yyyy-MM-dd HH:mm"/></div>
				
			</div>
		</c:forEach>

	</div>



	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>