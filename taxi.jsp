<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
    <head>
        <link rel = "stylesheet" href = "firststyle.css">
    </head>
    
    <script type="text/javascript">
    function goTaxi(){
		location.href="board.jsp";
	}
    // 취소 버튼 클릭시 로그인 화면으로 이동
    function goLogin(){
		location.href="LoginPage.jsp";
	}
    function goJoin(){
		location.href="member.jsp";
	}
	</script>
    
	<meta charset="UTF-8">
    <body>
        <img id = "img" src = "3.jpg">
        <div class = "header">
            <div class = "menu">
                <div id = "logo">
                </div>
                <div id = "m_blank">
                </div>
                <div id = "m_link">
                    <ul>
                        <li>
                            <a href = "#"></a>
                        </li>
                        <li>
                            <a href = "#"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class = "main">
            <div class = "up">

            </div>
            <div class = "center">
                <img src = "5.png" style="height: 100px">
                <br>
                Let's take<br> a taxi
                <br>
                <button class = "button" onclick="goTaxi()"><span>택시 타러 가기</span></button>
                <button class = "button" onclick="goLogin()"><span>로그인</span></button>
                <button class = "button" onclick="goJoin()"><span>회원가입</span></button>
            </div>
            <div class = "down">
        
            </div>
        </div>
    </body>
</html>