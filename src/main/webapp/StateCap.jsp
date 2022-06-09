<%@page import="Mine_vest.StatesCapital" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="max-width:500px;">
<%!StatesCapital sc=new StatesCapital(); %>
<table>
<tr class="gradientdown">
<th style="width:40px;"><br/></th>
<th style="width:100px;">State and Capital</th>
</tr>
<%!String sAndc; %>
<%
for(int i=0;i<sc.statecapital.size();i++)
{
sAndc=sc.getStateCapital(i);%>
<tr class="data">
<td style="text-align:center;"><td>


<%= sAndc %></td>
</tr>
<%} %>
</table>
</div>
</body>
</html>