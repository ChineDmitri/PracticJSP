<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.util.Random"%>
	<div>
		Le nombre aléatoire généré est
		<%
	Random rd = new Random();

	out.println(rd.nextInt());
	%>
	</div>

	<br>
	<a href="#" onclick="window.location.reload(true);">Recommencer !</a>
</body>
</html>