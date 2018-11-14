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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw"); 
	String nickname = request.getParameter("nickname");
	String birth_date = request.getParameter("birth_date");
	
	if(id == "" || id == null) out.println("id이 null입니다");
	if(pw == "" || pw == null) out.println("pw이 null입니다");
	if(nickname == "" || nickname == null) out.println("nickname이 null입니다");
	if(birth_date == "" || birth_date == null) out.println("birth_date이 null입니다");
try {
 
     String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
     String url = "jdbc:oracle:thin:@localhost:1521:root";
     
     ResultSet rs = null;
     
     Class.forName(driverName);
 
     Connection con = DriverManager.getConnection(url,"MEMBER_","member_"); //url + id + pw
 
     out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
     Statement stmt = con.createStatement();            // SQL 쿼리를 날리기위한 Statement 객체 생성
     
     //여기서 아이디 중복 검사 다시 함!
     
     String sql= "SELECT * FROM MEMBER_LIST WHERE ID="+id;
     
     rs = stmt.executeQuery(sql);
     
     if(rs.isBeforeFirst()){
    	 //아이디 사용불가능! 중복된 ID 존재함
    	 out.println("중복된 ID가 존재합니다.");
    	 con.close();	//연결끊기.
     }
     
     sql = null;
     
     sql = "INSERT INTO MEMBER_LIST "+
     	"(ID, PW, NICKNAME, BIRTHDATE, RIGHT, ISBLACKLIST) "+
    	"VALUES ("+id+", '"+pw+"', '"+nickname+"', '"+birth_date+"', '"+1+"','"+0+"')";
     
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