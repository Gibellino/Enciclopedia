<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/shop-homepage.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Enciclopédia</title>
</head>
<body>
	<%@ include file="/nav.jsp"%>
	
	<%
		if (request.getParameter("pag") != null) {
			if (request.getParameter("pag").equals("temas")) {
				%> <jsp:include page="/temas.jsp" /> <%
			} else if (request.getParameter("pag").equals("users")) {
				%>	<jsp:include page="/user.jsp" /> <%
			}
		}else{
			%> <jsp:include page="/home.jsp" /> <%
		}
	%>
</body>
</html>
