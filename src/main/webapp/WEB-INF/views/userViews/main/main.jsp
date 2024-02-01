<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/usermainviews/slider.css" var="sliderCSS" />
<c:url value="/resources/js/usermainviews/slider.js" var="sliderJS" />
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="${sliderCSS}" />
</head>
<body>
   <jsp:include page="../../layout/header.jsp" />
   <jsp:include page="../../layout/navibar.jsp" />

   <div style="font-size: 40px;">궁능유적본부</div>
   <div class="box">
      <div class="slide">
         <div class="images">
            <img alt="경복궁" src="../resources/image/royal_inner/main/gyeongbok/gyeongbokgung.jpg" />
            <img alt="덕수궁" src="../resources/image/royal_inner/main/deoksu/deoksugung.jpg" />
            <img alt="창경궁" src="../resources/image/royal_inner/main/changgyeong/changgyeonggung.jpg" />
            <img alt="창덕궁" src="../resources/image/royal_inner/main/changdeok/changdeokgung.jpg" />
            <img alt="종묘" src="../resources/image/royal_inner/main/jongmyo/jongmyo.jpg" />
         </div>
      </div>
      <button class="back">❮</button>
      <button class="next">❯</button>
   </div>
   <div>
      공지사항 <a href="">전체보러가기</a>
      <div>리스트1,2,3</div>
   </div>
   <div>
      <a href="/royal/palace/event">알림판(행사)</a>
   </div>
   <!-- 행사 가는 링크 달기 -->
   <jsp:include page="../../layout/footer.jsp" />

   <script src="${sliderJS}"></script>
</body>
</html>