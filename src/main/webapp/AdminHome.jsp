<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
</head>
<body >
<br>

<a href=HomePage.jsp style="color:blue;text-decoration:none ;font-size:35px;font-weight:bold;">Click here to Navigate to FlyAway Home Page</a>

<p>No flight is delayed today!!</p>
<br><br>
<%
	@SuppressWarnings("unchecked")
	List<String> MasterFlights=(List<String>)session.getAttribute("MasterFlights");
if(MasterFlights!=null){
%>

<h1>Master List of Airlines</h1>

<%
	
	for(String flight:MasterFlights){
%>

<%=flight%>
<br>


<%
	}
%>
<%
	}
	else{
%>
<h1>There are no available flights</h1>
<%
	}
%>
<br>


</body>
</html>