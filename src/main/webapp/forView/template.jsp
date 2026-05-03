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
    height: 100px;
    text-align: center;
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

<table border="">
	<tr>
		<td colspan="2">
		<div style="display:flex; align-items:center; justify-content:center; gap:10px;">
		<div><textarea name='writeInfo' rows='3' cols='80'></textarea></div>
		<div><input type='submit' value='보내기' margin:0 auto;'></div>		
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