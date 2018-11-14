<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
		function insertPopup(){
		var data = document.querySelector('#pId').value;     		
		if(!(window.open("id_check.jsp?id="+data,"childForm","width=450, height=320 , resizable = no, scrollbars = no, status = no"))){
			return false;
		}
		
	}
</script>
<table  border = "0" cellspacing = "1" cellpadding = "0" width = "400">
	<body topmargin = "0" leftmargin="0" marginwidth="0" marginheight="0">
		<div align = "center" >
			<form action="member_insert.jsp" method="post" onsubmit="return formCheck();">
				<tr align = "right">
					<td width = "25%" style ="font-family: Tahoma; font-size : 8pt">
						<b>아이디</b>
						(ID)&nbsp;  
					</td>
					<td align = "left" style ="font-family: Tahoma; font-size : 8pt">
					
					<input type="text" id="pId" name="id"/> 
					<a href = "javascript:insertPopup()"> <img src = "img2.jpg"></a> 
					<br/>
					</td>
				</tr>
				<tr>
						<td colspan="5" bgcolor = "#EBD9D9" align = "center">
							<img sec= " " width="10" height="1">
						</td>
				</tr>
				<tr align = "right" height = "28" style ="font-family: Tahoma; font-size : 8pt">
					<td >
					<b>PW :</b> 
					</td>
					<td align = "left">
						<input type="text" name="pw"/>
					</td>
				</tr>
				<tr>
						<td colspan="5" bgcolor = "#EBD9D9" align = "center">
							<img sec= " " width="10" height="1">
						</td>
					</tr>
				<tr>
					<td align = "right" style ="font-family: Tahoma; font-size : 8pt">
							확인 : 
					</td>
					<td align = "left">
							<input type="text" name="pw_chk"/><br/>
					</td>
				</tr>
				<tr>
						<td colspan="5" bgcolor = "#EBD9D9" align = "center">
							<img sec= " " width="10" height="1">
						</td>
					</tr>
				<tr>
					<td align = "right" style ="font-family: Tahoma; font-size : 8pt">
						별명 :
					</td>
					<td align = "left">
						<input type="text" name="nickname"/><br/>
					</td>
				</tr>
				<tr>
						<td colspan="5" bgcolor = "#EBD9D9" align = "center">
							<img sec= " " width="10" height="1">
						</td>
					</tr>
				<tr>
					<td align = "right" style ="font-family: Tahoma; font-size : 8pt">
						생년월일 :
					</td>
					<td align = "left">
						<input type="text" name="birth_date"/><br/>
					</td>			
				</tr>
				<tr>
						<td colspan="5" bgcolor = "#EBD9D9" align = "center">
							<img sec= " " width="10" height="1">
						</td>
					</tr>
				<tr>
					<td colspan="2" align = "right" style="font-family: Tahoma; font-size: 10pt">
						<button>
							회원가입
						</button>
							<!--<input type="submit"/>-->
					</td>
					
				</tr>
				
			</form>
		</div>
</table>
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