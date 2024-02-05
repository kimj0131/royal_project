<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/event.css" var="eventCSS" />
<c:url value="/resources/js/event.js" var="eventJS" />
<meta charset="UTF-8">
<title>행사</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${eventCSS}" />
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/layout/header.jsp" />
	<div class="sub">
		<div class="mainImg">
			<img
				src="../resources/image/reservation/bg_sub04.jpg"
				alt="">
		</div>
		<div>
			<h1>행사</h1>
		</div>
	</div>

	<h2>행사안내</h2>
	<hr width="70%">
	
	<div class="container">
		<div class="click">
				<div class="click-row1">경복궁</div>
				<div class="click-row2">덕수궁</div>
				<div class="click-row3">창경궁</div>
				<div class="click-row4">창덕궁</div>
			</div>
	</div>

	 <div class="date-wrap">
            <div class="date-month">
                <button type="button" id="month-prev" class="month-move"> 〈 </button>
                <span id="month-this"></span>
                <button type="button" id="month-next" class="month-move"> 〉 </button>     
            </div>
     </div>
            <!-- 
            <table class="date-month">
                <thead>
                    <tr>
                        <th>일</th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th>토</th>
                    </tr>
                </thead>
                <tbody id="tbl-month">
                    <tr>
                        <td class="sun"><a>1</a></td>
                        <td class=""><a href="/news/schedule?date=2022-05-02">2</a></td>
                        <td class=""><a>3</a></td>
                        <td class=""><a>4</a></td>
                        <td class="today"><a>5</a></td>
                        <td class=""><a>6</a></td>
                        <td class="sat"><a>7</a></td>
                    </tr>

                    <tr>
                        <td class="sun"><a>29</a></td>
                        <td class=""><a>30</a></td>
                        <td class=""><a>31</a></td>
                        <td class=""><a></a></td>
                        <td class=""><a></a></td>
                        <td class=""><a></a></td>
                        <td class="sat"></a></td>
                    </tr>
                </tbody>
            </table>
             -->

	<script src="${eventJS}"></script>
	
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>