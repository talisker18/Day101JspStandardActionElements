<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="" method="post">
		Enter name: <input type="text" name="fname"/><br>
		Enter age: <input type="text" name="age"/><br>
		Enter email: <input type="text" name="email"/><br>
		Enter password: <input type="text" name="password"/><br>
		Gender: <input type="radio" name="gender" value="female"/>Female
		&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gender" value="male"/>Male<br>
		
		Hobbies: <input type="checkbox" name="hobby" value="reading"/>Reading
		&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="browsing"/>Reading
		&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="gaming"/>Reading<br>
		
		Country: 
		<select name="country">
		
			<option value="INDIA">INDIA</option>
			<option value="USA">USA</option>
			<option value="UK">UK</option>
		
		</select><br><br>
		<input type="submit" name="register" value="Register Details"/>
	
	
	</form>

	<%
	
		if(request.getParameter("register")!=null){%>
			
			<jsp:useBean id="user" class="to.User" scope="request"></jsp:useBean>
			<jsp:setProperty property="*" name="user"/>
			<jsp:forward page="RegisterServlet"></jsp:forward>
		<%}%>

</body>
</html>