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
	request.setCharacterEncoding("euc-kr");
	String title = request.getParameter("title");
	String s_country = request.getParameter("s_country");
	String start = request.getParameter("start");
	String d_country = request.getParameter("d_country");
	String dest = request.getParameter("dest");
	String time = request.getParameter("time");
	String cloth = request.getParameter("cloth");
	
	if(title == "" || title == null) out.println("title이 null입니다");
	if(s_country == "" || s_country == null) out.println("s_country이 null입니다");
	if(start == "" || start == null) out.println("start이 null입니다");
	if(d_country == "" || d_country == null) out.println("d_country이 null입니다");
	if(dest == "" || dest == null) out.println("dest이 null입니다");
	if(time == "" || time == null) out.println("time이 null입니다");
	if(cloth == "" || cloth == null) out.println("cloth이 null입니다");
	
	dest = d_country + " " + dest;
	start = s_country + " " + start;
try {
 
     String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
     String url = "jdbc:oracle:thin:@localhost:1521:root";
     
     Class.forName(driverName);
 
     Connection con = DriverManager.getConnection(url,"BOARD","board"); 
 
     Statement stmt = con.createStatement();         
     
     String sql = "INSERT INTO BOARD "+"(IDX, TITLE, START_, DEST_, TIME_, CLOTH_) "+"VALUES (board_seq.nextval, '"+title+"', '"+start+"', '"+dest+"', '"+time+"', '"+cloth+"')";
     
	 stmt.executeUpdate(sql);
	 
	 sql = null;
	 
	 con = DriverManager.getConnection(url,"MEMBER_","member_"); 
	 
	 stmt = con.createStatement();
	 
	 ResultSet rs = null;
	 
	 String FIRST_S = "없음", FIRST_D = "없음", SECOND_S = "없음", SECOND_D = "없음", THIRD_S = "없음", THIRD_D = "없음";
	 
	 sql = "SELECT FIRST_S, SECOND_S, THIRD_S, FIRST_D, SECOND_D, THIRD_D FROM MEMBER_LIST WHERE ID = "+session.getAttribute("sessionID");
	 
	 out.println(sql);
	 
	 rs = stmt.executeQuery(sql);
	 
	 while(rs.next()){
		 FIRST_S = rs.getString(1);
		 SECOND_S = rs.getString(2);
		 THIRD_S = rs.getString(3);
		 FIRST_D = rs.getString(4);
		 SECOND_D = rs.getString(5);
		 THIRD_D = rs.getString(6);
	 }
	 
	 THIRD_S = SECOND_S;
	 SECOND_S = FIRST_S;
	 
	 THIRD_D = SECOND_D;
	 SECOND_D = FIRST_D;
	 
	 
	 FIRST_S = start;
	 FIRST_D = dest;

	 sql = "UPDATE MEMBER_LIST SET FIRST_S = '"+FIRST_S+"', SECOND_S = '"+SECOND_S+"', THIRD_S = '"+THIRD_S+"', FIRST_D = '"+FIRST_D+"', SECOND_D = '"+SECOND_D+"', THIRD_D = '"+THIRD_D+"' WHERE id ="+session.getAttribute("sessionID");
	 stmt.executeQuery(sql);
	 
     con.close();
 
} catch (Exception e) {
 
     out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");
 
     out.println(e.getMessage());
 
     e.printStackTrace();
}
finally{
	 
    out.print("<script>location.href='board.jsp';</script>");

}
%>
<body>
</body>
</html>