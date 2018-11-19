<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("report_id");
	String content = request.getParameter("report_content"); 
	
	if(id == "" || id == null) out.println("id이 null입니다");
	if(id == "" || content == null) out.println("content이 null입니다");
try {
	String driverName = "oracle.jdbc.driver.OracleDriver"; 
	 
    String url = "jdbc:oracle:thin:@localhost:1521:root";
    
    ResultSet rs = null;
    
    Class.forName(driverName);

    Connection con = DriverManager.getConnection(url,"MEMBER_","member_"); //url + id + pw

    out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
    
    String sql= "UPDATE MEMBER_LIST SET ISBLACKLIST = 1 WHERE ID="+id;
    
    Statement stmt = con.createStatement();            // SQL 쿼리를 날리기위한 Statement 객체 생성
    
    rs = stmt.executeQuery(sql);
    
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