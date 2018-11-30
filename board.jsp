<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <link rel = "stylesheet" href = "boardstyle.css">
		<%
		if(session.getAttribute("sessionID") == null)
		{
			response.sendRedirect("Login.jsp"); // 로그인 안되있으면 로그인 페이지로 옮겨감 추후에 첫화면으로 바꿔야함!
		}
		try {
			String driverName = "oracle.jdbc.driver.OracleDriver"; 
	 
	        String url = "jdbc:oracle:thin:@localhost:1521:root";
	 
	        ResultSet rs = null;
	 
	 
	        Class.forName(driverName);
	 
	        Connection con = DriverManager.getConnection(url,"MEMBER_","member_");
	 
	        Statement stmt = con.createStatement();        
	 
	        String sql = "SELECT NICKNAME, FIRST_S, SECOND_S, THIRD_S, FIRST_D, SECOND_D, THIRD_D from MEMBER_LIST WHERE ID="+session.getAttribute("sessionID");
	 
	        rs = stmt.executeQuery(sql);
		%>
    </head>

    <body>
        <img id = "img" src = "3.jpg">
        <div class = "up"></div>
        <div class = "center">
            <div class = "box">
                <div class = "state">
                    <img src = "5.png" style = "height: 100px">
                    <div id = "user">
                        <div id = "mystate">
                            <span>
                                <img src = "person.jpg">
                                내 정보
                            </span>
                        </div>
                        <div id = "mystatebody">
                            <div style = "margin-left:10px">
                        	<%
                                 while(rs.next()){
                                	 out.print("<b>" + rs.getString(1) + "</b><br>"); 
                           	%>
                                최근 출발지<br>
				<%   
 
					out.print("1 " + rs.getString(2) + "<br>");		//받아온다
 
					out.print("2 " + rs.getString(3) + "<br>");
 
					out.print("3 " + rs.getString(4) + "<br>");
					
					out.print("최근 도착지<br>");
 
					out.print("1 " + rs.getString(5) + "<br>");
 
					out.print("2 " + rs.getString(6) + "<br>");
 
					out.print("3 " + rs.getString(7) + "<br>");
 
				}
				con.close();
				}catch(Exception e){
					out.println("Oracle Database Connection Something Problem. <hr>");
		 
        			out.println(e.getMessage());
 
        			e.printStackTrace();

				}
				%>
                            </div>
                        </div>
                        <button class = "button">게시판 만들기</button>
                        <button class = "button"><img src = "realreport.png" style = "height: 15px">신고하기</button>
                    </div>
                </div>
                <div class = "main">
                    <div class = "header">
                        <div>
                            <span>게시판 목록</span>
                        </div>
                    </div>
				<%
				try {
					String driverName = "oracle.jdbc.driver.OracleDriver"; 
	 
					String url = "jdbc:oracle:thin:@localhost:1521:root";
	 
					ResultSet rs = null;
	 
	 				Class.forName(driverName);
	 
					Connection con = DriverManager.getConnection(url,"BOARD","board");
	 
					String sql = "SELECT * FROM BOARD ORDER BY TIME_ DESC";
					
					PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);        
					
					rs = pstmt.executeQuery();
					
					rs.last();
					
					int row = rs.getRow();
					
					rs.beforeFirst();
				%>
                    <div class = "board">
                    	<div class = "room_box">
                    		<% for (int i=1; i<=row; i++) { 
                    			rs.next();
                    		%>
                    		<div class = "room">
                                <div class = "room_tilte">
                            <%
                            	out.print(rs.getString(2));
                            %> 
                                </div>
                                <div class = "room start">
                            <%
                            	out.print(rs.getString(3));
                            %> 
                                </div>
                                <div class = "room dest">
							<%
                            	out.print(rs.getString(4));
                            %> 
                                </div>
                                <div class = "join">
                                    <button class = "join_button">
                                        + 참가
                                    </button>
                                </div>
                            </div>
							<% } %>
                            
                         </div>
                    </div>
				<%
				}catch(Exception e){
					out.println("Oracle Database Connection Something Problem. <hr>");
		 
        			out.println(e.getMessage());
 
        			e.printStackTrace();

				}
				%>
                </div> 
            </div>
        </div>
        <div class = "down"></div>
    </body>
</html>