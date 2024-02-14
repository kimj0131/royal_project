<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<c:choose>
		<c:when test="${param.result eq 'upsertComplete'}">
			<script type="text/javascript">
				alert("데이터를 갱신했습니다.");
				location.href = "/royal/manage/main/index/";
			</script>
		</c:when>
		<c:when test="${param.result eq 'upsertFail'}">
			<script type="text/javascript">
				alert("테이블에 데이터를 갱신하는데 실패했습니다.");
				location.href = "/royal/manage/main/index/";
			</script>
		</c:when>
		
	</c:choose>
	<head>
		<meta charset="UTF-8" />
		<title>공공 api 데이터 추가 페이지</title>
	</head>
	<body>
		<button id="input-btn" onclick="location.href = '/royal/manage/main/database/inner/insert'">Database Insert</button>

		<hr />

	</body>
</html>
