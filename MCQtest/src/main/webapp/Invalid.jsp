<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz</title>
</head>
<body>
<%
String msg = (String)request.getAttribute("msg");
out.println(msg+"<br>");
%>
<jsp:include page="index.html"/>



</body>
</html>