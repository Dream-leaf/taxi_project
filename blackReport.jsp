<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body  height="320" cellspacing = "1" cellpadding = "0" width = "400" align = "center">
    <p>
        신고 대상 닉네임: <input name = title type="text">
    </p>
    <p align = "left">사유</p>
    <p>
        <textarea name="content" rows="20" cols="60">
        </textarea>
    </p>
    <input type="button" value="제출">
    
</body>
</html>
<script>
//서밋 버튼을 누르면 새로운 링크 열리면서 정보 받아서 데이터 베이스에 저장이 됨! 어드민 데이터 베이스 하나 만들어서 거기다가 담기.
//관리자 페이지는 sql만들어서 데이터 베이스 접근하게 만들자. sql한줄 받아서 제출 누르면  db열어서 처리하고 결과값 다른 창에 출력되도록.
//관리자 페이지에서 받은 어드민 데이터 베이스 내용을 기반으로 신고 처리를 또 정함.
//이것도 sql쓰자..
</script>