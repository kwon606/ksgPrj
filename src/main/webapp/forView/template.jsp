<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String cate= (String)request.getAttribute("cate");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template</title>
<style>

	.wrapper{
	margin: 0 auto;
	display: flex;
	justify-content: center;
	align-items: center;
	
	
	}

	tr > td:first-child {
    width: 1000px;
    height: 50px;
    text-align: center;
    vertical-align: top;
	}
	
	tr:nth-child(3) > td:first-child {
  	 height: 400px;
	}
	
	tr:nth-child(4) > td:first-child {
  	 height: 50px;
	}
</style>
</head>
<body>
<div class="wrapper">

<table>
	<tr>
		<td colspan="2">
		<div style="display:flex; align-items:center; justify-content:center; gap:10px;">
		<img src="../img/naver/logo.jpg" height = "100px">
		 <div style="position:relative; display:inline-block;">
                <input type="text" name="writeInfo" 
                       style="border:2px solid #03C75A; 
                              border-radius:25px; 
                              padding:10px 80px 10px 15px; 
                              width:400px; 
                              font-size:16px;">
                <!-- 버튼을 input 안에 겹쳐서 배치 -->
                <input type="submit" value="검색" 
                       style="position:absolute; 
                              right:5px; 
                              top:50%; 
                              transform:translateY(-50%); 
                              background-color:#03C75A; 
                              color:white; 
                              border:none; 
                              border-radius:20px; 
                              padding:5px 15px; 
                              cursor:pointer;"></div>		
		</td>
	</tr>
	
	<tr>
	<td colspan="2">
	<jsp:include page="inc/header.jsp"/>
	</td>
	</tr>
	
	<tr>
		<td>
		<jsp:include page="inc/menu.jsp"/>
		</td>
	</tr>
	
	<tr>
		<td colspan="2">
		<jsp:include page="inc/footer.jsp"/>
		</td>
	</tr>
	
</table>
</div>
</body>
</html>