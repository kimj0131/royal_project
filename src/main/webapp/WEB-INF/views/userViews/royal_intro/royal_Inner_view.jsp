<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/royal_inner_view.css" var="innerCSS" />
<title>${palaceName} 내부 건축물</title>
<link rel="stylesheet" href="${innerCSS}" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	<jsp:include page="/WEB-INF/views/layout/navibar.jsp" />
	
	<div class="royal-name">
    <a href="/royal/palace/royalInner?palace=경복궁&royalId=1">경복궁</a>
    <a href="/royal/palace/royalInner?palace=덕수궁&royalId=4">덕수궁</a>
    <a href="/royal/palace/royalInner?palace=창경궁&royalId=3">창경궁</a>
    <a href="/royal/palace/royalInner?palace=창덕궁&royalId=2">창덕궁</a>
    <a href="/royal/palace/royalInner?palace=종묘&royalId=5">종묘</a>
	</div>

	<h2>${palaceName}이야기</h2>


	<div class="grid-container">
		<c:forEach items="${innerNameList}" var="innerName">
			<form action="/royal/palace/royalInner" method="get">
				<input type="hidden" name="palace" value="${palaceName}" />
				 <input	type="hidden" name="inner" value="${innerName}" />
					<c:choose>
						<c:when test="${palaceName eq '경복궁'}">
						<input	type="hidden" name="royalId" value="1" />
						</c:when>
						<c:when test="${palaceName eq '창덕궁'}">
						<input	type="hidden" name="royalId" value="2" />
						</c:when>
						<c:when test="${palaceName eq '창경궁'}">
						<input	type="hidden" name="royalId" value="3" />
						</c:when>
						<c:when test="${palaceName eq '덕수궁'}">
						<input	type="hidden" name="royalId" value="4" />
						</c:when>
						<c:when test="${palaceName eq '종묘'}">
						<input	type="hidden" name="royalId" value="5" />
						</c:when>
					</c:choose>
				<div class="innerNameDiv" onclick="this.parentNode.submit();">${innerName}</div>
			</form>
		</c:forEach>
	</div>
	<div></div>

	<h2>${innerDTO.royal_inner_name}</h2>
	<!--<img class="mainImg" src="${innerDTO.royal_inner_imgpath}" alt="건축물이미지" /> -->
	<div class="mainImg" style="width: 1240px; height: 574px;">
		<c:forEach items="${innerDTO.royal_inner_imgpath}" var="imagePath">
		<img src="${imagePath }" alt="건축물이미지" />	
		</c:forEach>
	</div>
	

	<div class="content">${innerDTO.royal_inner_detail}</div>
	<!-- 
	<p>Debug - Inner Name: ${innerDTO.royal_inner_name}</p>
	<p>Debug - Inner Image Path: ${innerDTO.royal_inner_imgpath}</p>
	<p>Debug - Inner Detail: ${innerDTO.royal_inner_detail}</p>
	 -->


	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>