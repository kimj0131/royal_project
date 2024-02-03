<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/resources/js/manager/navibar.js" var="navibarJS" />

<% 
	// 로그인 상태 확인 변수 설정
	String login_admin = (String) session.getAttribute("login_admin");
%>

<button onclick="location.href='./logout'">[TEST] 로그아웃(session 초기화)</button>
<!-- 세션에 로그인 정보가 없으면 알람을 띄우고 로그인화면으로 보냄 -->
<c:if test="${empty login_admin}">
	<script>
		alert("정상적인 접근이 아닙니다");
		location.href='./';
	</script>
</c:if>


<div id="navibar">
	<button id="summaryBtn">요약</button>
	<button id="reservationBtn">예약관리</button>
	<button id="eventBtn">행사관리</button>
	<button id="qnaBtn">QnA관리</button>
	<button id="noticeBtn">공지사항</button>
</div>

<script src="${navibarJS}"></script>

<%-- <% 
	// 로그인 상태 확인
	
	if (session.getAttribute("login_admin") == null){
		System.out.println("[WARNING] 유효하지 않는 접근을 확인했습니다.");
		response.sendRedirect(request.getContextPath() + "/YWRtaW5wYWdl/");
	}
%> --%>