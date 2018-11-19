<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <script type="text/javascript">
        function checkValue(){
            if(!document.reportInfo.report_id.value){
                alert("신고할 아이디를 입력하세요.");
    	        document.reportInfo.report_id.focus();    
                return false;
            }
            
            if(!document.reportInfo.report_content.value){
                alert("사유를 입력하세요.");
                document.reportInfo.report_content.focus();    
                return false;
            }        
        }    
    </script>
    <!-- 여기에 로그인이 안되있으면 로그인 페이지로 넘어가게 세션 만들기. taxi.jsp 파일 참고-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body align = "center" >
<form method="post" action="report_insert.jsp" name="reportInfo" onsubmit="return checkValue()">
    <p>
        신고 대상 ID: <input type="text" id="report_id" name="report_id">
    </p>
    <p  align = "center"> 
        <left>
            사유
        </left>
    </p>
    <p>
        <textarea name="report_content" id="report_content" rows="20" cols="60">
        </textarea>
    </p>
    <input type="submit" value="제출">
</form>
</body>
</html>