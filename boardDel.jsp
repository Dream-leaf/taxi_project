<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
		<%
		if(session.getAttribute("sessionID") == null)
		{
			response.sendRedirect("Login.jsp"); // 로그인 안되있으면 로그인 페이지로 옮겨감 추후에 첫화면으로 바꿔야함!
		}
		String id = (String)session.getAttribute("sessionID");
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
	        
	        rs.next();
	        
	        if( !id.equals( rs.getString("WRITER") ) ){
	        	out.println("<script>alert('권한이 없습니다');</script>");
	        	return;
	        }
	        
	        sql = "DELETE FROM BOARD WHERE IDX="+idx;
	        	        
	        stmt.executeQuery(sql);
	        
	        out.println("<script>alert('삭제하셨습니다');</script>");
	        
	        con.close();
		}catch(Exception e){
					out.println("Oracle Database Connection Something Problem. <hr>");
		 
        			out.println(e.getMessage());
 
        			e.printStackTrace();

		}
		finally{	
    		out.print("<script>location.href='board.jsp';</script>");
		}
		%>
		
    </head>

    <body>
    </body>
</html>