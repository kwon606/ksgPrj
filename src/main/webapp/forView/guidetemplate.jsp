<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mainUrl = (String)request.getAttribute("mainUrl");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TeamPrj1</title>
<style>
.wrapper{
	width: 1000px;
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
	
	tr:nth-child(2) > td:first-child {
  	 height: 300px;
  	 width: 200px;
	}
	
	

</style>
</head>
<body>
<div class="wrapper">
<table border="">
	<tr>
		<td colspan="2">
		<jsp:include page="/forView/guide/inc/header.jsp"/>
		</td>
	</tr>
	<tr>
		<td > 
		<jsp:include page="/forView/guide/inc/menu.jsp"/>
		</td>

		<td>
		<jsp:include page="<%=mainUrl%>"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<jsp:include page="/forView/guide/inc/footer.jsp"/>
		</td>
	</tr>
</table>
</div>
</body>
</html>