<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>


    <!-- font awesome cdn link yaha se  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="css/New.css">
	
  


</head>
<body >


<%
String uname = request.getParameter("d");
String us = (uname);
out.println(""+us);
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","hit123");
Statement st = conn.createStatement();
st.executeUpdate("delete from qureg40 where uname='"+us+"'");
response.sendRedirect("AdminLoginPage.jsp");


%>  


</body>
</html>