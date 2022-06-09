<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String str=""; %><%--Declaration tag --%>
<form method="GET"><%--Form Tag --%>
<h2><label>Enter a text and click Submit</label></h2>
<input type="text"name="un"><%--Input Tag--%>
<input type="submit"value="Click"><%--Button Tag--%>
<%str=request.getParameter("un");
if(str!=null)out.print("Welcome "+str);
else out.print("Empty");%>
</form>
</body>
</html>