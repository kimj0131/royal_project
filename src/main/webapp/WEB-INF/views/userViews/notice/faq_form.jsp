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
<link rel="stylesheet" href="${faqCSS}" />
<link rel="stylesheet" href="${public_communicationCSS}" />
<link rel="stylesheet" href="${communication_faqJS}" />
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
					<div id="all_BTN" class="all">전 체</div>
					<div id="GB_BTN" class="GB">경복궁</div>
					<div id="DS_BTN" class="DS">덕수궁</div>
					<div id="CG_BTN" class="CG">창경궁</div>
					<div id="CD_BTN" class="CD">창덕궁</div>
					<div id="JM_BTN" class="JM">종 묘</div>
				</div>
			</div>


				<div class="search_div">
					<div class="search_left">
						<div class="count_div">게시글수 [${faq.size()}]</div>
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
				
			<div class="inner">
				<div class="sub_con_section">
					<div class="txt_section_tit">목록</div>
					<div class="bd_wrap">
						<c:if test="${!empty faq}">
							<ul class="faq-list">
								<c:forEach items="${faq}" var="faq" varStatus="status">
									<div class="q_item">
										<div class="faq_id"> [${faq.faq_id}]</div>
										<div class="royal_id">
											<c:choose>
												<c:when test="${faq.royal_id == 1}">
							                경복궁
							            </c:when>
												<c:when test="${faq.royal_id == 2}">
							                창덕궁
							            </c:when>
												<c:when test="${faq.royal_id == 3}">
							                창경궁
							            </c:when>
												<c:when test="${faq.royal_id == 4}">
							                덕수궁
							            </c:when>
												<c:when test="${faq.royal_id == 5}">
							                종묘
							            </c:when>
											</c:choose>
										</div>
										<div class="faq-title"
											onclick="toggleContent(${status.index})">
											${faq.faq_title}</div>
									</div>
										<div class="faq-result" id="faq-result-${status.index}">
											${faq.faq_result}</div>
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

							<form id="qnaForm" action="/royal/communication/qna/add"
								method="POST">
								<!-- 문의 제목 값을 담는 숨겨진 필드 -->
								<input type="text" name="qna_title" value="${qna.qna_title}"
									required>
								<!-- royal_id 선택 필드 -->
								<select id="royal_id" name="royal_id" required>
									<option value="" selected disabled hidden>선택</option>
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
									required></textarea>

								<c:if test="${login_user == null}">
									<button class="btn" type="button">
										<a href="/royal/main/login" onclick="alert('로그인을 먼저 해주세요!')">보내기</a>
									</button>
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
	</div>

	<!-- 상세 내용 열고 닫기 script -->
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

	<script>
    // DOMContentLoaded 이벤트 리스너 등록
    document.addEventListener('DOMContentLoaded', function() {
        // URL의 쿼리스트링에서 alert 타입을 가져옴
        var alertType = new URLSearchParams(window.location.search).get('alert');
        
        // alert 타입에 따라 메시지를 설정하고 alert 창을 띄움
        if (alertType === 'success') {
            alert('문의가 정상적으로 접수되었습니다!');
        } else if (alertType === 'error') {
            alert('문의 접수가 실패했습니다!');
        }
    });
</script>



	<script src="${communication_faqJS}"></script>


	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
</body>
</html>