<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/css/layout/footer.css" var="footerCSS" />
<c:url value="/resources/image/layout/logo.png" var="logoIMG" />
<c:url value="/resources/image/layout/whiteGitBTN.png" var="githubIMG" />
<link rel="stylesheet" href="${footerCSS}" />
<link rel="stylesheet" href="${logoIMG}" />
<link rel="stylesheet" href="${githubIMG}" />

<div id="footer_more_div"> </div>
	<div id="footer">
		<a id="footer_logo" href="/royal/main/home">
		<img style="width:200px; height:auto; padding:30px 0 0 50px" src="${logoIMG}"/></a>
		<span id="footer_text">
		ⓒ Cultural Heritage Administration Royal Palaces and Tombs Center.
		All rights reserved.</span>

		<a id="gitIMG"href="https://github.com/kimj0131/royal_project">
			<img  style="width:80px; height:auto; 
				  padding-right:30px; padding-top:40px"  src="${githubIMG}"/>
		</a>
	</div>

</body>
</html>