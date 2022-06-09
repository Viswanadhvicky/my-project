<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--Given below is JSP script ie java code tag --%>
<%//out.print(2*5);
int count=0; 
//out.print("Vickyyyyy");%>
Page count is<%out.print(++count); %>
<%int n1=10;
int n2=20;
out.print("<br>sum of n1 and n2=");%>
<%=n1+n2 %>
</body>
</html>