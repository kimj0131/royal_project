<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/resources/js/input.js" var="inputJS" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Insert title here</title>
	</head>
	<body>
		<button id="input-btn">input</button>

		<hr />

		<div id="heritage-div"></div>

		<script type="text/javascript" src="${inputJS}"></script>
	</body>
</html>
