<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="EUC-KR">
    <title>회원가입 화면</title>
    
    <!-- css 파일 분리 -->
    <!-- <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/> -->
    <script type="text/javascript">
    
    	//팝업창 띄우고, ID 중복 검사함.
    	function idCheck(){
			var data = document.querySelector('#pId').value; 
			if(!(window.open("id_check.jsp?id="+data,"childForm","width=450, height=320 , resizable = no, scrollbars = no, status = no"))){
				return false;
			}
    	}
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue(){
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
    	        document.userInfo.id.focus();    
                return false;
            }
            
            if(!document.userInfo.pw.value){
                alert("비밀번호를 입력하세요.");
                document.userInfo.pw.focus();    
                return false;
            }
            
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.userInfo.pw.value != document.userInfo.pw_chk.value ){
                alert("비밀번호와 비밀번호확인이 일치하지않습니다.");
                return false;
            }
            
            if(!document.userInfo.name.value){
                alert("이름을 입력하세요.");
                document.userInfo.name.focus();    
                return false;
            }
            
            if(!document.userInfo.nickname.value){
                alert("별명을 입력하세요.");
                document.userInfo.nickname.focus();    
                return false;
            }
            
            if(!document.userInfo.birth_yy.value){
                alert("테어난 해를 입력하세요.");
                document.userInfo.birth_yy.focus();    
                return false;
            }
            
            if(!document.userInfo.birth_mm.value){
                alert("태어난 달을 입력하세요.");
                document.userInfo.birth_mm.focus();    
                return false;
            }
            
            if(!document.userInfo.birth_dd.value){
                alert("태어난 날을 입력하세요.");
                document.userInfo.birth_dd.focus();    
                return false;
            }
            
            if(!document.userInfo.mail1.value){
                alert("이메일주소를 입력하세요.");
                document.userInfo.mail1.focus();    
                return false;
            }
            
            if(!document.userInfo.phone_num.value){
                alert("휴대전화번호를 입력하세요.");
                document.userInfo.phone_num.focus();    
                return false;
            }
            
            if(!document.userInfo.address.value){
                alert("주소를 입력하세요.");
                document.userInfo.address.focus();    
                return false;
            }
            
        }
        
        // 정보를 넘겨서 데이터 베이스에 넣는 화면.
        function goMember_insert(){
			location.href="member_insert.jsp";
		}
        // 취소 버튼 클릭시 로그인 화면으로 이동
        function goLogin(){
			location.href="taxi.jsp"; //later, change location to Login page!!
		}
    </script>
    
</head>
<body>
    <!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        
        <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
        <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
        <form method="post" action="member_insert.jsp" name="userInfo" onsubmit="return checkValue()">
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" id="pId" name="id" maxlength="50">
                        <a href = "javascript:idCheck()"> <img src = "img2.jpg"></a> 
                        <!--  <input type="button" value="중복확인" onclick="idCheck()"> -->    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pw" maxlength="50">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="pw_chk" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">별명</td>
                    <td>
                        <input type="text" name="nickname" maxlength="50">
                    </td>
                </tr>
                <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">생일</td>
                    <td>
                        <input type="text" name="birth_yy" maxlength="4" placeholder="0000" size="6" >
                        <select name="birth_mm">
                            <option value="">월</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birth_dd" maxlength="2" placeholder="일" size="4" >
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">이메일</td>
                    <td>
                        <input type="text" name="mail1" maxlength="50">@
                        <select name="mail2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">휴대전화</td>
                    <td>
                        <input type="text" name="phone_num" />
                    </td>
                </tr>
                <tr>
                    <td id="title">주소</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="가입"/>  
            <input type="button" value="취소" onclick="goLogin()">
        </form>
    </div>
</body>
</html>
