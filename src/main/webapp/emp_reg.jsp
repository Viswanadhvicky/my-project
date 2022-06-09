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
<title>Registration of Employee</title>
<h1><label>************Employee Details************</label></h1><br><br>
<form method="post">

Name<input type="text" name="b"required><br><br>
Designation<input type="text" name="c"required><br><br>
<tr>
<td>
Id_proof:
<select name="id">
<option>Aadhar</option>
<option>Voter Id</option>
<option>License</option>
<option>Pancard No</option>
</select>
<input type="text" name="idnum" required/><br><br>
</td>
</tr>

Phone_no<input type="text" name="f"required><br><br>
MineId<input type="text" name="g"required><br><br>
UserName<input type="text" name="h"required><br><br>
Password<input type="password" name="i"required><br><br>
<input type="submit" value="Register">
<%

String bb=request.getParameter("b");
String cc=request.getParameter("c");
String dd=request.getParameter("idnum");
String ff=request.getParameter("f");

String gg=request.getParameter("g");
String hh=request.getParameter("h");
String ii=request.getParameter("i");
%>
<% try
{
	//"com.mysql.jdbc.Driver"

Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miningvest", "root", "ASUS@143");
Statement st=conn.createStatement();
ResultSet rs;
rs=st.executeQuery("select phone_num from employee");
String ui="";
int flag=0;
if(ff!=null)
{
	while(rs.next())
	{
		ui=rs.getString("phone_num");
		if(ff.equals(ui))
		{
			flag=1;
		}
	}
}
if(flag==0)
{
	st.executeUpdate("insert into employee(Name,Designation,Aadhar_no,Phone_num,mineid,username,Password) values('"+bb+"','"+cc+"','"+dd+"','"+ff+"','"+gg+"','"+hh+"','"+ii+"');");
	request.setAttribute("Message","Employee Data inserted Successfully!");
	%>
	<form action="emp_reg.jsp" method="post">
	To Register a New Employee<input type="submit" value="Click here">
	<br>
	<br><br>
	</form>
	<form action="emp_login.jsp" method="post">
	To login<input type="submit" value="Click here">
	</form><%
}
else
{
	out.println("Record already exists "+ "<a href='emp_reg.jsp'>Retry</a>");
	
}

//System.out.println("Data is successfully inserted!");
}
catch(Exception ex)
{
%><h2>


<% out.println(ex);%>
</h2>
<% 
ex.printStackTrace();
}
%>
</form>
</head>
<body>

</body>
</html>