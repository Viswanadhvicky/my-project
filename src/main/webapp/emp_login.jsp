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
<link rel="stylesheet" href="./style.css">
</head>
<body>
<h1><label>Login Page</label></h1>
<!-- partial:index.partial.html -->
<div class="login-page">
  <div class="form">
    <form class="login-form">
      <input type="text" placeholder="username"name ="user"/>
      <input type="password" placeholder="password"name="pswd"/>
      <button>login</button>
      <p class="message">Not registered? <a href="emp_reg.jsp">Create an account</a></p>
    </form>
  </div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>
<% String u=request.getParameter("user");
 String p=request.getParameter("pswd");
 %>
 <%
 try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miningvest", "root", "ASUS@143");
	Statement stmt=conn.createStatement();
	//stmt=conn.createStatement();
	ResultSet rs;
	rs=stmt.executeQuery("select username,password from employee");
	String us="";
	String ps="";
	int flag=0;
	if(u!=null)
	{
		while(rs.next())
		{
			us=rs.getString("username");
			ps=rs.getString("password");
			if(u.equals(us) && p.equals(ps))
			{%>
				<h1><label>Login Successful</label></h1><% 
				//out.print("Login Successful");
				//response.sendRedirect("demo1.jsp");
				flag=1;
				break;
			}
		}
	}
	if(u!=null && flag==0)
	{
		out.println("Username or Password is not found "+ "<a href='emp_login.jsp'>Retry</a>");
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
%> 
</body>
</html>