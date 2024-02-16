<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통</title>
<c:url value="/resources/css/communication/faq.css" var="faqCSS" />
<c:url value="/resources/css/communication/public_communication.css"
	var="public_communicationCSS" />
<c:url value="/resources/js/communication/communication_faq.js"
	var="communication_faqJS" />
<c:url value="/resources/js/communication/faq.js" var="faqJS" />
<link rel="stylesheet" href="${faqCSS}" />
<link rel="stylesheet" href="${public_communicationCSS}" />
<link rel="stylesheet" href="${communication_faqJS}" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<div class="wrap">
		<div class="content_wrap" id="contents_wrap">
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
					<h2 id="notice_title">자주 묻는 질문</h2>
				</div>

				<div class="BTN_class">
					<div id="all_BTN" class="all">전 체</div>
					<div id="GB_BTN" class="GB">경복궁</div>
					<div id="DS_BTN" class="DS">덕수궁</div>
					<div id="CG_BTN" class="CG">창경궁</div>
					<div id="CD_BTN" class="CD">창덕궁</div>
					<div id="JM_BTN" class="JM">종 묘</div>
				</div>
			</div>





			<div class="inner">
				<div class="sub_con_section">
					<div class="txt_section_tit">목록</div>
					<div class="count_div"><B>전체 : ${faq.size()} 개</B></div>
					<div class="bd_wrap">
						<c:if test="${!empty faq}">
							<div class="faq-wrapper">
								<ul class="faq-list">
									<c:forEach items="${faq}" var="faq" varStatus="status">

										<div class="faq-details">
											<div class="BTN_class2">
												<c:choose>
													<c:when test="${faq.royal_id == 1}">
														<div id="GB_BTN2" class="GB">경복궁</div>
													</c:when>
													<c:when test="${faq.royal_id == 2}">
														<div id="CD_BTN2" class="CD">창덕궁</div>
													</c:when>
													<c:when test="${faq.royal_id == 3}">
														<div id="CG_BTN2" class="CG">창경궁</div>
													</c:when>
													<c:when test="${faq.royal_id == 4}">
														<div id="DS_BTN2" class="DS">덕수궁</div>
													</c:when>
													<c:when test="${faq.royal_id == 5}">
														<div id="JM_BTN2" class="JM">종 묘</div>
													</c:when>
												</c:choose>
											</div>
											<!-- 제목만 눌렀을때 내용열리는 script와 눌렀을떄 내용 열리는 script 포함 -->
											<div class="faq-title"
												onclick="toggleContent(${status.index})">
												<span class="clickable-text">${faq.faq_title}</span> <span
													class="material-symbols-outlined"
													id="arrow-icon-${status.index}"> arrow_drop_down </span>
											</div>
										</div>
										<div class="faq-result hidden" id="faq-result-${status.index}">
											<div class="answer-text">답변</div>
											<br> &nbsp;${faq.faq_result}
										</div>

									</c:forEach>
								</ul>
							</div>
						</c:if>
					</div>
				</div>



				<div class="tit">문의하기</div>
					<div class="qna_box">
						<div class="input_wrap">
							<form id="qnaForm" action="/royal/communication/qna/add"
								method="POST">
								<!-- 문의 제목 값을 담는 숨겨진 필드 -->
								<input type="text" name="qna_title" value="${qna.qna_title}"
									required placeholder="제목을 입력해주세요.">
								<!-- royal_id 선택 필드 -->
								<select id="royal_id" name="royal_id" required>
									<option value="" selected disabled hidden>카테고리를
										선택해주세요.</option>
									<option value="1"
										<c:if test="${param.royal_id == 1}">selected</c:if>>경복궁</option>
									<option value="2"
										<c:if test="${param.royal_id == 2}">selected</c:if>>창덕궁</option>
									<option value="3"
										<c:if test="${param.royal_id == 3}">selected</c:if>>창경궁</option>
									<option value="4"
										<c:if test="${param.royal_id == 4}">selected</c:if>>덕수궁</option>
									<option value="5"
										<c:if test="${param.royal_id == 5}">selected</c:if>>종묘</option>
								</select>
								<!-- 컨텐츠 필드 -->
								<textarea id="qnaContent" name="qna_content" rows="5" cols="80"
									required placeholder="문의하실 내용을 적어주세요."></textarea>

								<c:if test="${login_user == null}">
									<a href="/royal/main/login" class="btn"
										onclick="alert('로그인을 먼저 해주세요!')">보내기</a>
								</c:if>
								<c:if test="${login_user != null}">
									<button class="btn" type="submit">보내기</button>
								</c:if>
							</form>

						</div>
					</div>
			</div>
		</div>
	</div>




	<script src="${communication_faqJS}"></script>
	<script src="${faqJS}"></script>


	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>