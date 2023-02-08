<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ql.jsp</title>
</head>
<body>
	<%@page import="java.util.*"%>
	<p>
		Nous somme le :
		<%
	Date now = new Date();
	out.println(now);
	%>
	</p>
	<p>
		Le nom du serveur sur lequel vous êtes connecté :
		<%
	String host = request.getHeader("host");

	out.println(host.subSequence(0, host.indexOf(":")));
	%>
	</p>
	<p>
		adresse IP est :
		<%
	out.println(request.getRemoteAddr());
	out.println(request.getRemoteAddr().length() > 7 ? " IPv6" : " IPv4");
	%>
	</p>
</body>
</html>