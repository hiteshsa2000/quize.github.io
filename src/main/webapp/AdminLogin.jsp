<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz</title>
</head>
<body>

<%
String aname = request.getParameter("aName");
String apassword = request.getParameter("aPass");

if(aname.equals("Admin") && apassword.equals("Admin123"))
{
%>	

<jsp:include page="AdminLoginPage.jsp"/>
<% 	
}
else
{
%>
<jsp:include page="admin.html"/>
<% 	
}
%>

</body>
</html>