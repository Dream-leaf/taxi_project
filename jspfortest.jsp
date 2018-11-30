<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% for (int i=1; i<6; i++) { %>
<img src='./land<%=i%>_off.gif' onmouseover='over(<%=i%>)' onmouseout='out(<%=i%>)' id='img<%=i%>'/>
<% } %>

</body>
</html>