<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE htmlPUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

/* Style the body */
body {
    font-family: Arial;
    margin: 0;
}

/* Header/logo Title */
.header {
    padding: 60px;
    text-align: center;
    background: #1abc9c;
    color: white;
}

/* Style the top navigation bar */
.navbar {
    display: flex;
    background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
    color: white;
    padding: 14px 20px;
    text-decoration: none;
    text-align: center;
}

/* Change color on hover */
.navbar a:hover {
    background-color: #ddd;
    color: black;
}

/* Column container */
.row {  
    display: flex;
    flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
    flex: 30%;
    background-color: #f1f1f1;
    padding: 20px;
}

/* Main column */
.main {
    flex: 70%;
    background-color: white;
    padding: 20px;
}

/* Fake image, just for this example */
.fakeimg {
    background-color: #aaa;
    width: 100%;
    padding: 20px;
}

/* Footer */
.footer {
    padding: 20px;
    text-align: center;
    background: #ddd;
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 700px) {
    .row, .navbar {   
        flex-direction: column;
    }
}
</style>
</head>
<%
try {
 
        String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
        String url = "jdbc:oracle:thin:@localhost:1521:root";
 
        ResultSet rs = null;
 
      
 
        Class.forName(driverName);
 
        Connection con = DriverManager.getConnection(url,"BOARD","board");
 
        out.println("Oracle Database Connection Success.");
 
      
 
        Statement stmt = con.createStatement();        
 
        String sql = "select * from board order by time_ desc";
 
        rs = stmt.executeQuery(sql);
%>

<body>

<!-- Note -->
<div style="background:yellow;padding:5px">
  <h4 style="text-align:center">Resize the browser window to see the responsive effect.</h4>
</div>

<!-- Header -->
<div class="header">
  <h1>My Website</h1>
  <p>With a <b>flexible</b> layout.</p>
</div>

<!-- Navigation Bar -->
<div class="navbar">
  <a href="#">Link</a>
  <a href="#">Link</a>
  <a href="#">Link</a>
  <a href="#">Link</a>
</div>

<!-- The flexible grid (content) -->
<div class="row">
  <div class="side">
      <h2>About Me</h2>
      <h5>Photo of me:</h5>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
      <h3>More Text</h3>
      <p>Lorem ipsum dolor sit ame.</p>
      <div class="fakeimg" style="height:60px;">Image</div><br>
      <div class="fakeimg" style="height:60px;">Image</div><br>
      <div class="fakeimg" style="height:60px;">Image</div>
  </div>
  <div class="main">
      <h2>TITLE HEADING</h2>
	  <h5>Title description, Dec 7, 2017</h5>
	  
	  
  	  <a href="member.jsp">회원가입</a>	
  	  
	  <table>
	  	<tr>
	  		<th>번호</th>
	  		<th>제목</th>
	  		<th>출발지</th>
	  		<th>도착지</th>
	  		<th>시간</th>
	  		<th>인상착의</th>
	  	</tr>
<%   
 
        while(rs.next()){	//rs에 항목이 존재하면
 
            out.print("<tr>");
 
            out.print("<td>" + rs.getString(1) + "</td>");		//받아온다
 
            out.print("<td>" + rs.getString(2) + "</td>");
 
            out.print("<td>" + rs.getString(3) + "</td>");
 
            out.print("<td>" + rs.getString(4) + "</td>");
 
            out.print("<td>" + rs.getString(5) + "</td>");
 
            out.print("</tr>");
 
        }
 
%>
	  </table>
	  <a href="board.jsp">글쓰기</a>
<%
		con.close();
	}catch(Exception e){
		out.println("Oracle Database Connection Something Problem. <hr>");
		 
        out.println(e.getMessage());
 
        e.printStackTrace();

	}
%>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      <br>
      
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
  </div>
</div>

<!-- Footer -->
<div class="footer">
  <h2>Footer</h2>
</div>

</body>
</html>
