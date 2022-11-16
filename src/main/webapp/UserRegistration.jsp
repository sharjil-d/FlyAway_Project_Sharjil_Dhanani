<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
</head>
<body >
<br>
<a href=HomePage.jsp style="color:blue;text-decoration:none ;font-size:35px;font-weight:bold;">Click here to Navigate to FlyAway Home Page</a>
<br><br>
<link href="css/style.css" rel="stylesheet"/>
<center>
<div style="border:3px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=UserRegistration method=post>
	<label for=email>Email :-</label> <input type="email" name=email id=email /><br><br>
	<label for=pass>Password :-</label> <input type="password" name=password id=pass /><br><br>
	<label for=name>Name :-</label> <input type="text" name=name id=name /><br><br>
	<label for=phno>Phone No. :-</label> <input type="text" name=phno id=phno /><br><br>
	<label for=adno>Address. :-</label> <input type="text" name=address id=address /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</center>
</body>
</html>