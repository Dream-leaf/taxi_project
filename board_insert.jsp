<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>e</title>
</head>
<%
	String title = request.getParameter("title");
	String start = request.getParameter("start"); 
	String dest = request.getParameter("dest");
	String time = request.getParameter("time");
	String cloth = request.getParameter("cloth");
	
	if(title == "" || title == null) out.println("title이 null입니다");
	if(start == "" || start == null) out.println("start이 null입니다");
	if(dest == "" || dest == null) out.println("dest이 null입니다");
	if(time == "" || time == null) out.println("time이 null입니다");
	if(cloth == "" || cloth == null) out.println("cloth이 null입니다");
try {
 
     String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
     String url = "jdbc:oracle:thin:@localhost:1521:root";
     
     Class.forName(driverName);
 
     Connection con = DriverManager.getConnection(url,"BOARD","board"); //url + id + pw
 
     out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
     Statement stmt = con.createStatement();            // SQL 쿼리를 날리기위한 Statement 객체 생성
     
     String sql = "INSERT INTO BOARD "+"(IDX, TITLE, START_, DEST_, TIME_, CLOTH_) "+"VALUES (board_seq.nextval, '"+title+"', '"+start+"', '"+dest+"', '"+time+"', '"+cloth+"')";
     
    stmt.executeUpdate(sql);  
     con.close();
 
} catch (Exception e) {
 
     out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");
 
     out.println(e.getMessage());
 
     e.printStackTrace();
}
finally{
	 
    out.print("<script>location.href='taxi.jsp';</script>");

}
%>
<body>
</body>
</html>