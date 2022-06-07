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


  
   
    <div class="content">
        <h3>Admin Page</h3>
            </div>


<table border="1" class="content-table" >
	<tr>
		<th> Name </th>
		<th> Mobile No </th>
		<th> E-Mail </th>
		<th> User-Name </th>
		<th> PassWord </th>
		<th> RemoveUser </th>
	</tr>

<%



try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","hit123");
	Statement st = conn.createStatement();
	// out.println(ps.getName()+"&nbsp&nbsp"+ps.getmno()+"&nbsp&nbsp"+ps.email()+"&nbsp&nbsp"+ps.getuname()+"&nbsp&nbsp"+ps.getpass1()+"<br>");
	String str="select * from qureg40";
	ResultSet rs = st.executeQuery(str);
	while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("mno") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("uname") %></td>
			<td><%=rs.getString("pass1") %></td>
			<td><a href="delete.jsp?d=<%=rs.getString("uname") %>"> Remove </a></td>
		</tr>			
		<% 
	} // while end

}catch(Exception e){
	out.print("KUch to gadBad ho raha na bhai.....database mein");
	}

%>


</table>


	<form action ="index.html" method="post">
            
    <input type="submit" value="logOut" class="btn">
	</form>

<!-- home section ends -->

<!-- custom js file link  -->

</body>
</html>