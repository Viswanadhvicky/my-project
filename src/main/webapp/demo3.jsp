<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dynamic Build table</title>
</head>
<body>
<table border=6 width=100%>
<%
int n=3;
String []colors={"red","green","blue"};
for(int i=0;i<n;i++)
{
%>
<tr> <%--tr is row --%>

<td><%=i %></td>
<td><%=colors[i]%></td>
</tr>
<%
}
%>
</table>

</body>
</html>