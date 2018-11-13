<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function popupClose(form){
		form.targer = opener.name;
		form.submit();
		
		if(opener != null){
			opener.insert = null;
			
			self.close();
		}
	}

</script>
<body>
<form method="post" name="writeform" action="member.jsp" target="MemberServlet.do">

</form>
</body>
</html>