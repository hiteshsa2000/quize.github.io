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

<link rel="icon" href="image/logo1.webp" type="image/x-icon" >
    <!-- font awesome cdn link yaha se  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- css file ki link ye rahi  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>



<%

String name=request.getParameter("uName");
String mno=request.getParameter("uMNo");
String email=request.getParameter("uEmail");
String uname=request.getParameter("uUName");
String pass1=request.getParameter("uFPass");
String pass2=request.getParameter("uSPass");

if(pass1.equals(pass2)){
try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","hit123");
	PreparedStatement ps = conn.prepareStatement("insert into qureg40 values(?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, mno);
	ps.setString(3, email);
	ps.setString(4, uname);
	ps.setString(5, pass1);
	
	int x=ps.executeUpdate();
	if(x!=0){
		

out.print("");
 %>
 


<!-- home section starts  -->

<section class="home" id="home">
  
    <div class="image">
        <img src="image/bg2.webp" alt="">
        
    </div>

    <div class="content">
        <h3>REGISTRATION SUCCESSFULLY</h3>
            </div>

</section>

<!-- home section ends -->

<!-- User Login section starts   -->

<section class="book" id="student">

    <h1 class="heading"> <span>login</span>here </h1>    

    <div class="row">

        <div class="image">
            <img src="image/logo1.webp" alt="">
        </div>

        <form action ="login" method="post">
            <h3>user Login</h3>
            <input type="text" name="username" placeholder="user name" class="box">
            <input type="text" name="password" placeholder="Password" class="box">

           <input type="submit" value="log in" class="btn">
           
            
        </form>

    </div>

</section>

<!-- user Login section Ends   -->


<!-- custom js file link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="js/script.js"></script>




 <% 

	}else{
		out.print("Something wents wrong");
		 %>
		 <form action ="index.html" method="post"><h3>Something Wents Wrong</h3>
		 <input type="submit" value="Go Home" class="btn"></form>

		 <% 
		

	}
}catch(Exception e){
	out.print("You Have Already Account Their...");
	%>
	 <form action ="index.html" method="post"><h3>please try Another user name</h3>
	 <input type="submit" value="Go Home" class="btn"></form>

	 <% 
}
}else{
	out.print("PassWord Not Matching...");
	
	 %>
	 <form action ="index.html" method="post"><h3>Password Not Matching</h3>
	 <input type="submit" value="Go Home" class="btn"></form>

	 <% 
 
	  
}



%>




</body>
</html>