<%-- <%@include file="src/main/java/com/nucleus/model/Customer.java" %> --%>
<%@page import="com.nucleus.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="index1.jsp" %>

<s:form action="" modelAttribute="customer"><br>
<table border="5" align="center" >
<col width="10" >
<tr><td><b>Customer Code </td><td><s:input path="customer_code" value="${customer.getCustomer_code() }"/></td></tr>
<tr><td><b>Customer Name </b></td><td> <s:input path="customer_name" value="${customer.getCustomer_name()}"/></td></tr>
<tr><td><b>Customer Address1 </b></td><td> <s:input path="customer_address1" value="${customer.getCustomer_address1()}"/></td></tr>
<tr><td><b>Customer Pin code </b></td><td> <s:input path="customer_pinCode" value="${customer.getCustomer_pinCode()}"/></td></tr>
<tr><td><b>Customer Email Address </b></td><td> <s:input path="email_address" value="${customer.getEmail_address()}"/></td></tr>
<tr><td><b>Customer Contact number </b></td><td> <s:input path="contact_number" value="${customer.getContact_number()}"/></td></tr>
</table>                   
</s:form>
</body>
</html>