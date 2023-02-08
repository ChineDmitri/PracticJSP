<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	http://localhost:8080/PracticJSP/PageAvecErreur.jsp?attention=42 
	Génére l'exeption
	-->

	<!-- 	AJOUTER EXEPTION -->
	<%@page import="java.lang.ArithmeticException"%>

	<%
	if (request.getParameter("attention") == null) {
		response.getWriter().append("Cette page fonctionne !<br>");
	} else {
		try {
			int i = 1 / 0;
		} catch (ArithmeticException e) {
			out.println(e);
		}
	}
	%>
</body>
</html>