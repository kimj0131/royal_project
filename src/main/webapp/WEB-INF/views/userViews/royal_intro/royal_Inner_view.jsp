<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/royal_inner_view.css" var="innerCSS" />
<c:url value="/resources/js/royal_intro/royal_inner_slide.js" var="innerJS" />
<c:url value="/resources/js/royal_intro/royal_innerName.js" var="innerNameJS" />
<c:url value="/resources/image/royal_inner/img_opentype.png" var="opentypeIMG" />
<title>서울고궁안내 - ${palaceName}>내부건축물>${innerDTO.royal_inner_name}</title>
<link rel="stylesheet" href="${innerCSS}" />
<script src="https://kit.fontawesome.com/2706cc5797.js" crossorigin="anonymous"></script>
<script>
    // JSP 변수 값을 가져오기
    const selectedInnerName  = "${innerDTO.royal_inner_name}";
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp" />

	<div id="inner">
		<div class="container">
			<div id="royalNames">
				<div class="royalname">
					<input type="hidden" name="royal_id" value="1" /> 경복궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="4" /> 덕수궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="3" /> 창경궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="2" /> 창덕궁
				</div>
				<div class="royalname">
					<input type="hidden" name="royal_id" value="5" /> 종묘
				</div>
			</div>
			<div id="white_space"></div>
		</div>

		<h2>${palaceName}내부 건축물</h2>

		<div class="grid-container">
			<!-- innerNameList에 있는 각 내부 건물 이름에 대해 반복하여 폼 생성 -->
			<c:forEach items="${innerNameList}" var="innerName">
				<form action="/royal/palace/royalInner" method="get">
					<input type="hidden" name="palace" value="${palaceName}" /> <input
						type="hidden" name="inner" value="${innerName}" />
					<!-- palaceName에 따라 royalId 값을 설정 -->
					<c:choose>
						<c:when test="${palaceName eq '경복궁'}">
							<input type="hidden" id="royalId" name="royalId" value="1" />
						</c:when>
						<c:when test="${palaceName eq '창덕궁'}">
							<input type="hidden" id="royalId" name="royalId" value="2" />
						</c:when>
						<c:when test="${palaceName eq '창경궁'}">
							<input type="hidden" id="royalId" name="royalId" value="3" />
						</c:when>
						<c:when test="${palaceName eq '덕수궁'}">
							<input type="hidden" id="royalId" name="royalId" value="4" />
						</c:when>
						<c:when test="${palaceName eq '종묘'}">
							<input type="hidden" id="royalId" name="royalId" value="5" />
						</c:when>
					</c:choose>
					<!-- innerNameDiv를 클릭하면 해당 폼을 제출함 -->
					<div class="innerNameDiv" onclick="this.parentNode.submit();">${innerName}</div>
				</form>
			</c:forEach>
		</div>

		<div class="palaceInnerName">${innerDTO.royal_inner_name}</div>

		<div class="main-container">
			<div class="mainImg">
				<!-- 이미지 슬라이드를 표시할 div -->
				<div id="imageSlider">
					<!-- 이미지 경로를 가져와 슬라이드로 표시 -->
					<c:forEach items="${innerDTO.royal_inner_imgpath}" var="imagePath">
						<img src="${imagePath}" alt="건축물이미지" />
					</c:forEach>
				</div>
			</div>
			<div class="copy_container">
				<div class="copy_container_text">
					<i>본 저작물은 공공누리 제1유형으로 개방한 '문화재청 4대궁 및 종묘 문화재 해설 정보'을 이용하였으며,</i> <br>
					<i>해당 저작물은 '문화재청, <a
						href="https://www.cha.go.kr/html/HtmlPage.do?pg=/publicinfo/pbinfo3_0301.jsp&mn=NS_04_04_02">궁궐ㆍ종묘
							목록 조회</a>'에서 무료로 다운받으실 수 있습니다.
					</i>
				</div>
				<div class="copy_container_img">
					<img alt="opentype" src="${opentypeIMG}">
				</div>
			</div>
			<div class="content">${innerDTO.royal_inner_detail}</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp" />
	<script src="${innerJS}"></script>  
	<script src="${innerNameJS}"></script>
</body>
</html>