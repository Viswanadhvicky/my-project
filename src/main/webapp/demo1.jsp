<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String str=""; %>
<form method="GET">
<label><b>Registration Form</b></label><br><br>
First Name<input type="text" name="nu"><br><br>
Email Id<input type="text" name="email"><br><br>
Password<input type="password" name="pwd"><br><br>
<input type="submit"value="Register">
<%str=request.getParameter("un");
if(str!=null)out.print("Welcome "+str);
else out.print("Empty");%>
</form>
</body>
</html>