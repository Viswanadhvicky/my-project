<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.Statement" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="java.sql.Driver.*" %>
    <%@ page import="java.sql.DriverManager" %>
    <%@ page import="java.sql.SQLException" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.lang.Class" %>
    <%@ page import="java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
Id <input type="text" name="un">
Name<input type="text" name="p">

<input type="submit" value="click"></form>
<%
String un=request.getParameter("un");
String p=request.getParameter("p");
%>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animal", "root", "ASUS@143");
	Statement stmt=conn.createStatement();
	//stmt=conn.createStatement();
	ResultSet rs;
	rs=stmt.executeQuery("select id,name from herbi");
	String utype="";
	String uname="";
	int flag=0;
	if(un!=null)
	{
		while(rs.next())
		{
			utype=rs.getString("id");
			uname=rs.getString("name");
			if(utype.equals(un) && uname.equals(p))
			{
				out.print("Record found");
				response.sendRedirect("demo1.jsp");
				flag=1;
				break;
			}
		}
	}
	if(un!=null && flag==0)
	{
		out.println("Animal id name is incorrect!"+"<a herf='login.jsp'> Retry</a>");
	}
	conn.close();
}
catch(SQLException e)
{
	out.println(e);
}
catch(Exception e)
{
	out.println(e);
}
%></body>
</html>