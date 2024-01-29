<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통합예약</title>
</head>
<body>

	<jsp:include page="../../layout/header.jsp" />

	<h2
		style="border: 1px solid white; background: linear-gradient(180deg, rgba(221, 208, 241, 0.68) 0%, rgba(0, 2, 15, 0.00) 100%);">예약모아보기</h2>
	<span>예약할 프로그램 선택</span>
	<div style="display: grid;">

		<div style="border: 2px solid black; margin: 5px; display: flex; flex-direction: row; padding:5px">
			<div>경복궁(클릭시 해당 예약 페이지로 가게 알아서 설정하시기)</div>
			<div>덕수궁</div>
			<div>창경궁</div>
			<div>창덕궁</div>
		</div>

		<div style="border: 2px solid black; margin: 5px">
			<div>해설예약</div>
			<div>행사예약</div>
		</div>

		<div style="border: 2px solid black; margin: 5px">
			<div>해설목록</div>
			<div>행사목록</div>
		</div>

	</div>



	<jsp:include page="../../layout/footer.jsp" />

</body>
</html>