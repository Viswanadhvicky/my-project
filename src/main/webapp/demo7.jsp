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
<form>
<label><b>Registration Form</b></label><br><br>
First Name<input type="text" name="nu"><br><br>
Email Id<input type="text" name="email"><br><br>
Password<input type="password" name="pwd"><br><br>
Married <input type="radio" name="married"><br><br>
Un-Married<input type="radio" name="married"><br><br>
Gender<br>
<input type="radio" name="gender" value="Male">Male
<input type="radio" name="gender" value="Female">Female
<input type="radio" name="gender" value="Others">Others<br>
<button type="button" onclick="displayRadioValue()">Submit</button>
<br>
<div id="result"></div>
<script>
function displayRadioValue()
{
	var ele=document.getElementsByName("gender");
	for(i=0;i<ele.length;i++)
		{
		if(ele[i].checked)
			document.getElementById("result").innerHTML="Gender: "+ele[i].value;
		}
	}</script>
Certified In?<br>
<input type="checkbox" name="k">C & DS<br>
<input type="checkbox" name="k">Java<br><br>
<select name="country">
<option value=1>India</option>
<option value=2>USA</option>
<option value=3>UK</option>

</select>
<input type="submit"value="Register">
<%str=request.getParameter("nu");
if(str!=null)
	out.print("Welcome "+str);
else 
	out.print("Unsucessful");%>
</form>
</body>
</html>