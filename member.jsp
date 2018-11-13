<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="member_insert.jsp" method="post" onsubmit="return formCheck();">
		
		ID : <input type="text" name="id"/><br/>
		PW : <input type="text" name="pw"/><br/>
		PW확인 : <input type="text" name="pw_chk"/><br/>
		별명 : <input type="text" name="nickname"/><br/>
		생년월일 : <input type="text" name="birth_date"/><br/>
		<input type="submit"/>
		<script>
	function formCheck() {
		 
	    var id = document.forms[0].id.value;
	    var pw = document.forms[0].pw.value;
	    var pw_chk = document.forms[0].pw_chk.value;
	    var nickname = document.forms[0].nickname.value;
	    var birth_date = document.forms[0].birth_date.value;
	 
	    if (id == null || id == ""){					//같은 아이디 중복체크 해야함   
	        alert('ID를 입력하세요');                                   
	        document.forms[0].id.focus();                           
	        return false;                                           
	    }
	 
	    if (pw == null ||  pw  == ""){          
	        alert('PW를 입력하세요'); 
	        document.forms[0].pw.focus();                      
	        return false;               
	    }
	 
	    if (pw != pw_chk){
	        alert('PW와 PW확인이 일치하지않습니다');   
	        document.forms[0].pw_chk.focus();                      
	        return false;            
	    }
	    if (nickname == null || nickname == "" ){		//추후에 같은 닉네임 확인 필요.                            
	        alert('시간을 입력하세요');   
	        document.forms[0].time.focus();                      
	        return false;            
	    }
	    if (birth_date == null || birth_date == "" ){
	        alert('생년월일을 입력하세요');   
	        document.forms[0].birth_date.focus();                      
	        return false;            
	    }
	 
	}
	</script>
</body>
</html>