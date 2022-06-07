<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>

    <!-- font awesome cdn link yaha se  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- css file ki link ye rahi  -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>


<!-- home section starts  -->

<section class="home" id="home">

    <div class="image">
        <img src="image/bg2.webp" alt="">
    </div>

    <div class="content">
        <p style="font-size: 40px;">Marks is
        
<%
int ans=0;

String cq1 =request.getParameter("qu1");
String cq2 =request.getParameter("qu2");
String cq3 =request.getParameter("qu3");
String cq4 =request.getParameter("qu4");
String cq5 =request.getParameter("qu5");
String cq6 =request.getParameter("qu6");
String cq7 =request.getParameter("qu7");
String cq8 =request.getParameter("qu8");
String cq9 =request.getParameter("qu9");
String cq10 =request.getParameter("qu10");



String ans11="James Gosling";
String ans12="Java is a platform-independent programming language";
String ans13="JDK";
String ans14="Use of pointers";
String ans15="keyword";
String ans16=".java";
String ans17="JAVA_HOME";
String ans18="Compilation";
String ans19="Passing itself to the method of the same class";
String ans110="Compile time polymorphism";


//out.print(" "+cq1);

if(cq1.equals(ans11)){
	ans++;
	out.println("");
}

if(cq2.equals(ans12)){
	ans++;
	out.println("");
}

if(cq3.equals(ans13)){
	ans++;
	out.println("");
}

if(cq4.equals(ans14)){
	ans++;
	out.println("");
}

if(cq5.equals(ans15)){
	ans++;
	out.println("");
}

if(cq6.equals(ans16)){
	ans++;
	out.println("");
}

if(cq7.equals(ans17)){
	ans++;
	out.println("");
}

if(cq8.equals(ans18)){
	ans++;
	out.println("");
}

if(cq9.equals(ans19)){
	ans++;
	out.println("");
}

if(cq10.equals(ans110)){
	ans++;

out.println(""+ans);
%>
</p>
<%

}
else{
	
	out.println(""+ans);
	%>
	
	<%	
}

%>


<br>
<br>


<form action ="UserLogin.jsp" method="post">
<input type="submit" value="next quiz" class="btn">
</form>
<br>
<a style="font-size: 20px;" href="logout">LogOut</a>

<!--  logout button is not working so use url.....
<form action ="logout" method="post">
<input type="submit" value="log Out" class="btn">
</form>
-->
</div>

</section>
</body>
</html>