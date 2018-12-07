<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
		<%
		String idx = request.getParameter("idx");
		try {
			String driverName = "oracle.jdbc.driver.OracleDriver"; 
	 
	        String url = "jdbc:oracle:thin:@localhost:1521:root";
	 
	        ResultSet rs = null;
	        
	        Class.forName(driverName);
	 
	        Connection con = DriverManager.getConnection(url,"BOARD","board");
	 
	        Statement stmt = con.createStatement();        
	 
	        String sql = "SELECT * FROM BOARD WHERE IDX="+idx;
	        
	        rs = stmt.executeQuery(sql);
	        
	        while(rs.next())
	        {
	        	out.println(rs.getString("IDX"));
	        	out.println(rs.getString("TITLE"));
	        	out.println(rs.getString("START_"));
	        	out.println(rs.getString("DEST_"));
	        	out.println(rs.getString("TIME_"));
	        	out.println(rs.getString("CLOTH_"));
	        	out.println(rs.getString("WRITER"));
	        	out.println(rs.getString("PART1"));
	        	out.println(rs.getString("PART2"));
	        	out.println(rs.getString("PART3"));
	        	out.println(rs.getString("PARTNUM"));
	        }
	        con.close();
		}catch(Exception e){
					out.println("Oracle Database Connection Something Problem. <hr>");
		 
        			out.println(e.getMessage());
 
        			e.printStackTrace();

		}
		finally{
		}
		%>
		
    </head>

    <body>
    </body>
</html>