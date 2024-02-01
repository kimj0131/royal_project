<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>궁 내부 건축물 인덱스</title>
</head>
<body>

	<!-- 
		royal_id
		경복궁 = 1
		창덕궁 = 2
		창경궁 = 3
		덕수궁 = 4
		종묘 = 5
	-->

	<h1>궁 내부 건축물 인덱스</h1>

	<form action="/royal/TestRoyalInner/inner" method="get">
		<button name='palace' value="경복궁">경복궁 내부 건축물</button>
		<button name='palace' value="창덕궁">창덕궁 내부 건축물</button>
		<button name='palace' value="창경궁">창경궁 내부 건축물</button>
		<button name='palace' value="덕수궁">덕수궁 내부 건축물</button>
		<button name='palace' value="종묘">종묘 내부 건축물</button>
	</form>
</body>
</html>