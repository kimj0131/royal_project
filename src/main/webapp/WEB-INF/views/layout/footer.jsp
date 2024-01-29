<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/css/footer.css" var="footerCSS" />
<c:url value="/resources/image/logo.png" var="logoIMG" />
<c:url value="/resources/image/githubicon.png" var="githubIMG" />
<link rel="stylesheet" href="${footerCSS}" />
<link rel="stylesheet" href="${logoIMG}" />
<link rel="stylesheet" href="${githubIMG}" />


	<div id="footer">
		<a href="/royal/main/home"><img src="${logoIMG}"/></a>
		<span id="footer_text">ⓒ Cultural Heritage Administration Royal Palaces and Tombs Center. All rights reserved.</span>
		<a href="https://github.com/kimj0131/royal_project"><img style="width:150px; height:auto" src="${githubIMG}"/></a>
	</div>

</body>
</html>