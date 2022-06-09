<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int week=4; %>
<%switch(week)
{ case 0:
	out.println("Sunday");
	break;
case 1:
	out.println("Monday");
	break;
case 2:
	out.println("Tuesday");
	break;
case 3:
	out.println("Wednesday");
	break;
case 4:
	out.println("Thursday");
	break;
case 5:
	out.println("Friday");
	break;
case 6:
	out.println("Saturday");
	break;
	default:
		out.println("wrong");
}		
	
 %>
 <%!int day=6;int i=1; %>
 <% while(i<=day){
	 if(i<=day){
	 out.println("Its Weekday"+i);
 }
	 i++;}
 %>

</body>
</html>