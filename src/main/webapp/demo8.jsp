<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int a=1;int b=1;int c=1; %>
<%!int sum(int a,int b,int c)
{
return a+b+c;}%>
<%="Result is:"+sum(100,10,1) %>

</body>
</html>