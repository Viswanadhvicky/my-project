<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String str; %>
<form>
Id<input type="text" name="id">
Type<input type="text" name="vari">
Name<input type="text" name="nam">
<input type="submit" name="click">


<%
//int id;
 //id=Integer.parseInt(request.getParameter("id"));
 //String n=request.getParameter("id");
// int in=Integer.parseInt(n);
String vari=request.getParameter("vari");
String name=request.getParameter("nam");
try
{
	//"com.mysql.jdbc.Driver"

Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animal", "root", "ASUS@143");
Statement st=conn.createStatement();

 st = conn.createStatement();
 String sql ="insert into herbi(id,type,name) values(10,'"+vari+"','"+name+"')";
 st.executeUpdate(sql);
//st.executeUpdate("insert into member_info (fname,lname,contact_no,subscription,processing,courier,deposit,door_no,area,city,pin,dist,rec,date)  values('" + fnm + "','" + lnm + "','" + mn + "'," + sdp +","+ mf +","+mfm+","+mmf+",'"+add +"','"+a +"','"+b +"','"+c +"','"+d+"','"+e+"','"+f+"');");
//st.executeLargeUpdate(sql)
//request.setAttribute("message","Member Inserted Successfully!"); // Will be available as ${message}
//request.getRequestDispatcher("dataentry.jsp").forward(request,response);
  out.println("Data is successfully inserted!");

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
</body>
</html>