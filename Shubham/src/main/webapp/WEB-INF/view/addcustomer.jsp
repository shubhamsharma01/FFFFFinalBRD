<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %> 
    
    <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="j" %>
    <%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
    <%@ taglib uri="http://www.springframework.org/tags" prefix="msg" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add</title>
</head>

<script>

</script>

<body>
<%@include file="index1.jsp" %>



<h1><center>Insert New Record</center></h1>
<s:form action="add1" modelAttribute="customer">
<j:set var="username"><security:authentication property="name"/></j:set>
<s:hidden path="created_by" value="${username}"/>
<table border="5" align="center" >


<tr><td colspan="2" style="text-align:center"><msg:message code="customer.customer_code"/>
</td><td><s:input path="customer_code" pattern="^[a-zA-Z\s]+$" title="invalid name format" required="true"/>
<s:errors path="customer_code"/></td></tr> 


<tr><td colspan="2" style="text-align:center">
<msg:message code="customer.customer_name"/></td>
<td><s:input path="customer_name" pattern="^[a-zA-Z\s]+$" title="invalid name format" required="true"/>
<s:errors path="customer_name"/></td></tr>

<tr><td colspan="2" style="text-align:center">
<msg:message code="customer.customer_address1"/>
</td><td><s:textarea path="customer_address1" pattern="^[a-zA-Z\s]+$" title="invalid name format" required="true"/>
<s:errors path="customer_address1"/></td></tr>



<tr><td colspan="2" style="text-align:center">
<msg:message code="customer.customer_pinCode"/></td><td>
<s:input path="customer_pinCode" pattern="[0-9]{6,6}" title="PinCode should be of 6 characters" required="true"/>
<s:errors path="customer_pinCode"/></td></tr>


<tr><td colspan="2" style="text-align:center">
<msg:message code="customer.email_address"/>
</td><td><s:input path="email_address" pattern="^.+@.+\\..+$" title="Invalid email format" required="true"/>
<s:errors path="email_address"/></td></tr>


<tr><td colspan="2" style="text-align:center">
<msg:message code="customer.contact_number"/>
</td><td><s:input path="contact_number" pattern="[0-9]{10,10}" title="contact number should be of 10 characters" required="true"/>
<s:errors path="contact_number"/></td></tr>


<tr><td></td><td><input type="submit" value="submit details" /></td></tr>

</table>
</s:form>
</body>
</html> 





