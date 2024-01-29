<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/resources/js/input.js" var="inputJS" />
<!DOCTYPE html>
<html>
	<c:choose>
		<c:when test="${param.result eq 'insertComplete'}">
			<script type="text/javascript">
				alert("데이터를 추가했습니다.");
				location.href = "/royal/manager/database/inner/openApi";
			</script>
		</c:when>
		<c:when test="${param.result eq 'insertFail'}">
			<script type="text/javascript">
				alert("테이블에 데이터를 추가하는데 실패했습니다.");
				location.href = "/royal/manager/database/inner/openApi";
			</script>
		</c:when>
		<c:when test="${param.result eq 'alreadyExists'}">
			<script type="text/javascript">
				alert("테이블에 데이터가 이미 있습니다.");
				location.href = "/royal/manager/database/inner/openApi";
			</script>
		</c:when>
		
		<c:when test="${param.result eq 'upsertComplete'}">
			<script type="text/javascript">
				alert("데이터를 갱신했습니다.");
				location.href = "/royal/manager/database/inner/openApi";
			</script>
		</c:when>
		<c:when test="${param.result eq 'upsertFail'}">
			<script type="text/javascript">
				alert("테이블에 데이터를 갱신하는데 실패했습니다.");
				location.href = "/royal/manager/database/inner/openApi";
			</script>
		</c:when>
		
	</c:choose>
	<head>
		<meta charset="UTF-8" />
		<title>공공 api 데이터 추가 페이지</title>
	</head>
	<body>
		<button id="input-btn">Database Insert</button>

		<hr />

		<div id="heritage-div"></div>

		<script type="text/javascript" src="${inputJS}"></script>
	</body>
</html>
