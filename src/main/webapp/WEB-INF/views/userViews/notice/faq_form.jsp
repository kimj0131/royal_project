<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소 통</title>
<c:url value="/resources/css/communication/faq.css" var="faqCSS" />
<c:url value="/resources/css/communication/public_communication.css"
	var="public_communicationCSS" />
<c:url value="/resources/js/communication/public_communication.js"
	var="public_communicationJS" />
<link rel="stylesheet" href="${faqCSS}" />
<link rel="stylesheet" href="${public_communicationCSS}" />
<link rel="stylesheet" href="${public_communicationJS}" />
<script src="https://kit.fontawesome.com/a2b7421397.js"
	crossorigin="anonymous"></script>
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
					<div id="all_BTN" class="all on">전 체</div>
					<div id="GB_BTN" class="GB">경복궁</div>
					<div id="DS_BTN" class="DS">덕수궁</div>
					<div id="CG_BTN" class="CG">창경궁</div>
					<div id="CD_BTN" class="CD">창덕궁</div>
					<div id="JM_BTN" class="JM">종 묘</div>
				</div>
			</div>


			<div class="inner">
				<div class="search_div">
					<div class="search_left">
						<div class="count_div">
							전체:
							<%=request.getAttribute("uniqueValuesCount")%>개
						</div>
					</div>
					<form name="listForm" id="listForm" method="post"
						onsubmit="fn_search(); return false;">
						<div class="search_right">
							<select name="search_select_id" id="search_select_id" title="구분">
								<option>전체</option>
								<option>제목</option>
								<option>내용</option>
							</select> <input type="text" name="search_input_id" id="search_input_id"
								value title="검색어를 입력해 주세요" placeholder="검색어를 입력해주세요.">
							<button type="submit">검색</button>
						</div>
					</form>
				</div>

				<div class="sub_con_section">
					<div class="txt_section_tit">목록</div>
					<div class="bd_wrap">
						<c:if test="${!empty faq}">
							<ul class="faq-list">
								<c:forEach items="${faq}" var="faq" varStatus="status">
									<li class="q_item">
										<div>${faq.faq_id}</div>
										<div>
											<c:choose>
												<c:when test="${faq.faq_royal_id == 1}">
							                경복궁
							            </c:when>
												<c:when test="${faq.faq_royal_id == 2}">
							                창덕궁
							            </c:when>
												<c:when test="${faq.faq_royal_id == 3}">
							                창경궁
							            </c:when>
												<c:when test="${faq.faq_royal_id == 4}">
							                덕수궁
							            </c:when>
												<c:when test="${faq.faq_royal_id == 5}">
							                종묘
							            </c:when>
											</c:choose>
										</div>
										<div class="faq-title"
											onclick="toggleContent(${status.index})">
											${faq.faq_title}</div>
										<div class="faq-result" id="faq-result-${status.index}">
											${faq.faq_result}</div>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</div>
				</div>

				<div class="sub_section_qna_wrap">
					<div class="qna_box">
						<div class="top">
							<div class="tit_wrap">
								<span class="ic_q"><i class="fa-solid fa-q"
									style="font-size: 40px"></i></span> &nbsp;&nbsp;
								<div class="tit">문의하기</div>
							</div>
						</div>

						<div class="input_wrap">
							<form id="qnaForm" action="/royal/communication/faq/"
								method="POST">
								<!-- 문의 제목 값을 담는 숨겨진 필드 -->
								<input type="text" name="qna_title" value="${qna.qna_title}">
								<textarea id="qnaContent" name="qna_content" rows="5" cols="80"></textarea>
								<input id="qnaWriter" type="text" name="member_name" />
								<!-- 사용자 이름을 입력하는 필드 -->
								<input type="text" name="qna_royal_id"
									value="${qna.qna_royal_id}">
								<!-- Royal ID 값을 담는 숨겨진 필드 -->
								<!--  <input type="hidden" name="qna_date" value="${qna.qna_date}">-->
								<!-- 문의 날짜 값을 담는 숨겨진 필드 -->
								<button class="btn" type="submit">보내기</button>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
	  // 페이지 로딩시 faq-result 감추기
	  window.onload = function() {
	    var allResultElements = document.querySelectorAll('.faq-result');
	    allResultElements.forEach(function(element) {
	      element.style.display = 'none';
	    });
	  };

	  function toggleContent(index) {
	    var resultElement = document.getElementById('faq-result-' + index);

	    // 다른 모든 faq-result를 감추기
	    var allResultElements = document.querySelectorAll('.faq-result');
	    allResultElements.forEach(function(element) {
	      if (element !== resultElement) {
	        element.style.display = 'none';
	      }
	    });

	    if (resultElement.style.display === 'none' || resultElement.style.display === '') {
	      resultElement.style.display = 'block';
	    } else {
	      resultElement.style.display = 'none';
	    }
	  }
	</script>

	<script src="${public_communicationJS}"></script>

	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>