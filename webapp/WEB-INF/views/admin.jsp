<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/responsive.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/adminindex.css"/>"/>
<title>Admin page</title>
</head>
<body>
	<header>
		<img alt="banner" src="<c:url value="/resources/img/it-banner.png"/>"/>
		<h3>Wellcome ${username}</h3>
		<a href="">Log out</a>
	</header>
	<main class="f-container-fluid">
		<div class="f-row">
			<aside class="f-col-md-3 f-col-xl-2 aside">
				<a class="active" href="">Dashboard</a>
				<a href="">Staff Manager</a>
			</aside>
			<section class="f-col-md-9 f-col-xl-10 table-staff">
				<table>
					<thead>
						<tr>
							<th colspan="4">Members of team</th>
						</tr>					
					</thead>
					<tbody>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Role</th>
							<th>Mail</th>
						</tr>
						<tr>
							<td>1</td>
							<td>${username}</td>
							<td>Developer</td>
							<td>duongvantungbkdn@gmail.com</td>
						</tr>
						<tr>
							<td>2</td>
							<td>admin2</td>
							<td>Developer</td>
							<td>admin2@gmail.com</td>
						</tr>
						<tr>
							<td>3</td>
							<td>admin3</td>
							<td>Developer</td>
							<td>admin3@gmail.com</td>
						</tr>
					</tbody>						
				</table>
			</section>
		</div>			
	</main>	
</body>
</html>