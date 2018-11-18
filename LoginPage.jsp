<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
    <head>
	<%
        request.setCharacterEncoding("euc-kr"); 
    %>
        <link rel = "stylesheet" href = "loginstyle1.css">
        
    <script type="text/javascript">
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.id.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.id.focus();
                return false;
            }
            if(!inputForm.password.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.password.focus();
                return false;
            }
        }
    </script>
    
    </head>

    <body class="align">
        <img id = "img" src = "3.jpg">
        <div class="grid"> 
            <form action = "Login.jsp" method="post" name="loginInfo" class="form login" onsubmit="return checkValue()">
                <header class="login__header">
                    <img src = "5.png" style="height: 100px">
                </header>
                    <div class="login__body">
                        <div class="form__field">
                            <input type="text" name="id" placeholder="아이디" required>
                        </div>
                  
                        <div class="form__field">
                            <input type="password" name="password" placeholder="패스워드" required>
                        </div>
                    </div>
                  
                    <footer class="login__footer">
                        <input type="submit" value="Login">
                        <p><span class="icon icon--info">?</span><a href="member.jsp">Sign Up</a></p>
                    </footer>
            </form>   
        </div>   
    </body>
</html>
