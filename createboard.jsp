<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
    <head>
    	<meta charset="EUC-KR">
        <link rel = stylesheet href = "create_board.css">
    </head>

    <body>
        <div class="container">
        	<form action="board_insert.jsp" method="post" onsubmit="return formCheck();">
            <div class="row">
            <div class="col-25">
                <label for="fname">게시판 제목</label>
            </div>
            <div class="col-75">
                <input type="text" id="title" name="title" placeholder="게시판 제목">
            </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label for="name">출발지</label>
            </div>
            <div class="col-75">
                <select id="s_country" name="s_country">
                    <option value = "남구">남구</option>
                    <option value = "달서구">달서구</option>
                    <option value = "달성군">달성군</option>
                    <option value = "동구">동구</option>
                    <option value = "북구">북구</option>
                    <option value = "서구">서구</option>
                    <option value = "수성구">수성구</option>
                    <option value = "중구">중구</option>
                </select>
                <input type = "text" id = "start" name="start" placeholder = "출발지">
            </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label for="country">도착지</label>
            </div>
            <div class="col-75">
                <select id="d_country" name="d_country">
                <option value = "남구">남구</option>
                <option value = "달서구">달서구</option>
                <option value = "달성군">달성군</option>
                <option value = "동구">동구</option>
                <option value = "북구">북구</option>
                <option value = "서구">서구</option>
                <option value = "수성구">수성구</option>
                <option value = "중구">중구</option>
                </select>
                <input type = "text" id = "dest" name ="dest" placeholder = "도착지">
            </div>
            </div>
            <div class = "row">
                <div class = "col-25">
                    <label for = "time">시간</label>
                </div>
                <div class = "col-75">
                    <input type = "text" placeholder = "ex) 12:34" name="time" id = "time">
                </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label for="subject">인상착의</label>
            </div>
            <div class="col-75">
                <textarea id="cloth" name="cloth" placeholder="인상착의" style="height:200px"></textarea>
            </div>
            </div>
            <div class="row" style = "justify-content: flex-end;">
                <input type="submit" value = "만들기">
            </div>
            </form>
        </div>
        <script>
		function formCheck() {	 
		    var title = document.forms[0].title.value;
		    var start = document.forms[0].start.value;
	    	var dest = document.forms[0].dest.value;
	   		var time = document.forms[0].time.value;
		    var cloth = document.forms[0].cloth.value;
	 
		    if (title == null || title == ""){                                 
	    	    alert('제목을 입력하세요');                                
	       		document.forms[0].title.focus();                        
	        	return false;                                                 
	    	}
		    
		    if (start == null ||  start  == ""){          
		        alert('출발지를 입력하세요'); 
	    	    document.forms[0].start.focus();                      
		   	     return false;               
		    }
		    
		    if (dest == null || dest == "" ){                             
		        alert('도착지를 입력하세요');   
		        document.forms[0].dest.focus();                      
	    	    return false;            
			}
		    
		    if (time == null || time == "" ){                            
		        alert('시간을 입력하세요');   
		        document.forms[0].time.focus();                      
		        return false;            
		    }
		    
		    if (time.match(/^(\d+)[:](\d+)$/ig) == null){                            
		        alert('시간(00:00)을 입력하세요');   
		        document.forms[0].time.focus();                      
		        return false;            
		    }
		    
		    if (cloth == null || cloth == "" ){                              	 
		        alert('인상착의를 입력하세요');   
		        document.forms[0].cloth.focus();                      
	   	     return false;            
	   		}
	 
	}
	</script>
    </body>
</html>