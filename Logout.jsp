<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="EUC-KR">
<%
		session.invalidate();
		response.sendRedirect("taxi.jsp");
%>
</head>
<body>
	
</body>
</html>