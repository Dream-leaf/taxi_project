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
	        
	        String num = rs.getString("PARTNUM");
	        
	        
	        // 4 명 이상이면 못들어오게 막아야하고.
	        // 이미 존재하는 아이디면 중복으로 못들어오게도 해야함.
	        if( !( num.equals("1") || num.equals("2") || num.equals("3") ) ){ //참가자가  1 2 3명이 아닐때.
	        	out.println("<script>alert('더 이상 참여할 수 없습니다');</script>");
	        	return;
	        }
	        if( id.equals(rs.getString("WRITER")) || id.equals(rs.getString("PART1")) || id.equals(rs.getString("PART2")) || id.equals(rs.getString("PART3")) ){
	        	out.println("<script>alert('이미 참가하셨습니다');</script>");
	        	return;
	        }
	        
	        if(num.equals("1"))
	        	sql= "UPDATE BOARD SET PARTNUM = PARTNUM + 1, PART1 ="+id+"WHERE IDX="+idx;
	        else if(num.equals("2"))
        		sql= "UPDATE BOARD SET PARTNUM = PARTNUM + 1, PART2 ="+id+"WHERE IDX="+idx;
	        else if(num.equals("3"))
	        	sql= "UPDATE BOARD SET PARTNUM = PARTNUM + 1, PART3 ="+id+"WHERE IDX="+idx;
	        	        
	        stmt.executeQuery(sql);
	        
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