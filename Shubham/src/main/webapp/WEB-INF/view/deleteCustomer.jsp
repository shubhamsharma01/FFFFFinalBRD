<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="index1.jsp" %>
<br>
<form action="delete2" method="post">
Enter the code of customer you want to delete: <input type="text" name="customer_code"/>
<input type="submit" value="delete"/>
</form>
</body>
</html>