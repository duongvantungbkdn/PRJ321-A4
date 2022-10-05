<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/responsive.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css"/>"/>
<title>Login</title>
</head>
<body>
	<div class="login-wrap">
		<h1>Login to enjoy</h1>
		<h2 id="error-mesage" class="red">
			<c:if test="${errormessage == null}"></c:if>
			<c:if test="${errormessage != null}">${errormessage}</c:if>
		</h2>
		<img alt="userlogin"
			src="<c:url value="resources/img/userlogin.png"/>" />
			
		<springForm:form action="login" modelAttribute="account" method="post" >
			<table>
				<tr class="f-row">
					<td class="f-col-md-3">Username
					</td>
					<td class="f-col-md-9">
						<input id="username-input" type="text" name="username"> <br />
					</td>
				</tr>
				<tr class="f-row">
					<td class="f-col-md-3">Password
					</td>
					<td class="f-col-md-9">
						<input id="password-input" type="password" name="password"> <br />
					</td>
				</tr>
			</table>
			<button id="login-submit-btn" type="submit">Login</button>
		</springForm:form>
	
		<div class="cancel-wrap">
			<a href="" class="cancel-btn">Cancel</a>
			<p>Create an account <a href="">Register</a></p>
		</div>
	</div>
	
</body>
</html>