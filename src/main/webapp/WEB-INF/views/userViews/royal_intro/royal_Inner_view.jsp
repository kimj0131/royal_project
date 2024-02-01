<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>궁 내부 건축물</title>
</head>
<body>

	<c:set var="royalId" value="1" />
	<c:set var="allInfo" value="${royals.getAll(royalId)}" />

	<c:set var="royalId" value="1" />
	<c:set var="royalName" value="${royals.getRoyalNameById(royalId)}" />

	<c:set var="royalId" value="1" />
	<c:set var="innerList" value="${royalInnerDatas}" />

	<div id="header">
	    <ul>
	        <li>${royalId}</li>
	        <li>${royalName} 내부건축물</li>
	    </ul>
	</div>
	<div id="main">
	    <!-- 여기에 궁 내부 건축물 정보를 표시할 부분 -->
	</div>
	<div id="footer">
	    <!-- 건축물 정보 표시 -->
	    <c:forEach var="inner" items="${royalInnerDatas}">
	        <p>${inner.royalInnerName}</p>
	        <img src="${inner.royalInnerImgPath}" alt="건축물 이미지">
	        <span>${inner.royalInnerDetail}</span>
	    </c:forEach>
	</div>

</body>
</html>