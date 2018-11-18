<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <meta charset="EUC-KR">
    <title>NBBANG : 회원가입</title>
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
            
            if(!document.userInfo.mail.value){
                alert("이메일주소를 입력하세요.");
                document.userInfo.mail.focus();    
                return false;
            }
            
            if(!document.userInfo.phone_num.value){
                alert("휴대전화번호를 입력하세요.");
                document.userInfo.phone_num.focus();    
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
    <style>
        html,body{width:100%;height:100%}
        body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}
        body,input,textarea,select,button,table{font-family:'돋움',Dotum,AppleGothic,sans-serif;font-size:12px}
        img,fieldset{border:0}
        img{vertical-align:top}
        ul,ol{list-style:none}
        em,address{font-style:normal}
        .blind,legend{display:block;position:absolute;left:0;top:-9999em;overflow:hidden}
        hr{display:none}
        a{text-decoration:none}
        a:hover,a:active,a:focus{text-decoration:underline}
        
        /* style */
        body {
            background-color: #f5f6f7;
        }
        #wrap {
            width: 460px;
            margin: 0 auto;
        }
        #header {
            padding: 62px 0 63px;
        }
        #header .logo {
            width: 240px;
            margin: 0 auto;
            background: url(img1.png) no-repeat 0 100%;
        }
        #header .logo a {
            display: block;
            height: 44px;
            overflow: hidden;
            text-indent: -9999em;
        }
    
    
        #content fieldset {
            border: 1px solid #dadada;
            margin-bottom: 10px;
            background-color: #fff;
        }
        #content fieldset .field {
            position: relative;
            border-bottom: 1px solid #f0f0f0;
        }
        #content fieldset .field.btn-radio {
            height: 49px;
        }
        #content fieldset .field:last-of-type {
            border-bottom: 0;
        }
        #content fieldset .field .inp-field {
            width: 350px;
            height: 49px;
            border: 0 none;
            color: #999;
            font-size: 14px;
            text-indent: 12px;
            line-height: 49px;
        }
        #content fieldset .field .ico {
            position: absolute;
            top: 0;
            right: 11px;
            display: block;
            width: 97px;
            height: 48px;
            background: url(img/ico_join3_20170202.png) no-repeat;
            text-indent: -9999em;
        }
        #content fieldset .field .ico.mail {
            background-position: 0 -47px;
        }
        #content fieldset .field .ico.pass {
            background-position: 0 -466px;
        }
        #content fieldset .field .ico.pass2 {
            background-position: 0 -515px;
        }
        #content fieldset .field .btn-label {
            position: absolute;
            top: 8px;
            z-index: 10;
            display: block;
            width: 212px;
            height: 31px;
            border: 1px solid #dcdcdc;
            background-color: #fff;
            color: #999;
            text-align: center;
            line-height: 31px;
            cursor: pointer;
        }
        #content fieldset .field .btn-label.on {
            z-index: 15;
            border-color:  rgb(255,157,26);
            color: rgb(255,157,26);
        }
        #content fieldset .field .btn-label.male {
            left: 15px;
        }
        #content fieldset .field .btn-label.female {
            left: 228px;
        }
        #content fieldset .field.btn-radio input {
            position: relative;
            left: 50px;
            top: 14px;
        }
        #content fieldset .field.birth:after,
        #content fieldset .field.confirm:after {
            content: '';
            display: block;
            clear: both;
        }
        #content fieldset .field.birth label {
            float: left;
            width: 53px;
            height: 49px;
            border-right: 1px solid #efefef;
            background-color: #f7f7f7;
            color: #999;
            text-align: center;
            line-height: 49px;
        }
        #content fieldset .field.birth input {
            float: left;
        }
        #content fieldset .field.birth select,
        #content fieldset .field.confirm select {
            float: left;
            margin-top: 10px;
            margin-left: 17px;
            width: 110px;
            height: 29px;
            background: url(img/sel_arr.gif) no-repeat 100% 50%;
            border: 0 none;
            font-size: 15px;
            font-weight: bold;
            line-height: 29px;
            -webkit-appearance: none;
        }
        #content fieldset .field.birth .field-wall,
        #content fieldset .field.confirm .field-wall {
            float: left;
            width: 0;
            height: 29px;
            margin-top: 10px;
            border-right: 1px solid #f0f0f0;
            text-indent: -9999em
        }
        #content fieldset .field.confirm input {
            float: left;
        }
        #content fieldset .field.confirm .btn-click {
            position: absolute;
            top: 9px;
            right: 15px;
            width: 99px;
            height: 31px;
            border: 1px solid #dcdcdc;
            background-color: #fff;
            color: #333;
            text-align: center;
            line-height: 31px;
            cursor: pointer;
        }
    
        #content .join .btn-area {
            padding-top: 43px;
        }
        #content .join .btn-area .btn-submit {
            width: 100%;
            border: 1px solid rgb(48, 28, 1);
            height: 59px;
            background: rgb(255,157,25) url(img2.gif) no-repeat 50% -1px;
            text-indent: -9999em;
            cursor: pointer;
        }
    
        /* Common */
        .w458 {width: 458px !important}
        .w330 {width: 330px !important}
        .w205 {width: 205px !important}
        .w145 {width: 145px !important}
        .w130 {width: 130px !important}
        </style>

</head>
<body>
    
    <div id="wrap">
        <!-- header -->
        <div id="header">
            <h1 class="logo">
                <a href="#">NAVER</a>
            </h1>
        </div>
        <!-- //header -->
        <!-- container -->
        <div id="container">
            <!-- content -->
            <div id="content">
                <h2 class="blind">N빵 회원가입</h2>
                <div class="join">
                <form method="post" action="member_insert.jsp" name="userInfo" onsubmit="return checkValue()">
                    <fieldset>
                        <legend>아이디, 비밀번호</legend>
                        <p class="field">
                            <label for="user-id" class="blind">아이디</label>
                            <input type="text" id="pId" name ="id" placeholder="아이디" class="inp-field">
                            <a href = "javascript:idCheck()"> <img src = "img4.png"></a>
                            <!--  <button ><img src="img4.png"/></button> -->
                        </p>
                        <p class="field">
                            <label for="user-pass" class="blind">비밀번호</label>
                            <input type="password" id="pw" name="pw" placeholder="비밀번호" class="inp-field">
                        </p>
                        <p class="field">
                            <label for="user-pass2" class="blind">비밀번호 재확인</label>
                            <input type="password" id="pw_chk" name="pw_chk" placeholder="비밀번호 재확인" class="inp-field">
                        </p>
                    </fieldset>
                    <fieldset>
                        <legend>개인정보</legend>
                        <p class="field">
                            <label for="user-name" class="blind">이름</label>
                            <input type="text" id="name" name="name" placeholder="이름" class="inp-field w458">
                        </p>
                        <p class="field">
                            <label for="user-name" class="blind">닉네임</label>
                            <input type="text" id="nickname" name="nickname" placeholder="닉네임" class="inp-field w458">
                        </p>
                        <p class="field birth">
                            <label for="user-birth">생일</label>
                            <input type="text" id="birth_yy" name="birth_yy"placeholder="년(4자)" maxlength="4" title="년도를 4자리로 입력하세요" class="inp-field w130">
                            <span class="field-wall">|</span>
                            <select title="월을 선택하세요" id="birth_mm" name="birth_mm">
                                <option value="">월</option>
                                <option value="1">1월</option>
                                <option value="2">2월</option>
                                <option value="3">3월</option>
                                <option value="4">4월</option>
                                <option value="5">5월</option>
                                <option value="6">6월</option>
                                <option value="7">7월</option>
                                <option value="8">8월</option>
                                <option value="9">9월</option>
                                <option value="10">10월</option>
                                <option value="11">11월</option>
                                <option value="12">12월</option>
                            </select>
                            <span class="field-wall">|</span>
                            <input type="text" id="birth_dd" name="birth_dd"placeholder="일" maxlength="2" title="일을 입력하세요" class="inp-field w145">
                        </p>
                        <p class="field">
                            <label for="user-email" class="blind">본인확인 이메일</label>
                            <input type="text" id="mail" name="mail" placeholder="본인확인 이메일" class="inp-field w458">
                        </p>
                    </fieldset>
                    <fieldset>
                        <legend>전화번호인증</legend>
                        <p class="field confirm">
                            <label for="user-num" class="blind">인증번호받기</label>
                            <select id="user-num" title="국가번호를 선택하세요">
                                <option value="+82">+82</option>							
                            </select>
                            <span class="field-wall">|</span>
                            <input type="text" id="phone_num" name="phone_num" placeholder="휴대전화번호" title="휴대전화번호를 입력하세요" class="inp-field w205">
                        </p>
                    </fieldset>
                    <div class="btn-area">
                        <input type="submit" value="가입하기" class="btn-submit">
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>