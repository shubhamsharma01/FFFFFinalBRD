<%-- <%@include file="src/main/java/com/nucleus/model/Customer.java" %> --%>
<%@page import="com.nucleus.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %> 
    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="all" />
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="index1.jsp" %>

<s:form  modelAttribute="customer"><br>
<%-- <table border="5" align="center" >
<col width="10" >
<tr><td><b>Customer Code </td><td><s:input path="customer_code" value="${customer.getCustomer_code() }"/></td></tr>
<tr><td><b>Customer Name </b></td><td> <s:input path="customer_name" value="${customer.getCustomer_name()}"/></td></tr>
<tr><td><b>Customer Address1 </b></td><td> <s:input path="customer_address1" value="${customer.getCustomer_address1()}"/></td></tr>
<tr><td><b>Customer Pin code </b></td><td> <s:input path="customer_pinCode" value="${customer.getCustomer_pinCode()}"/></td></tr>
<tr><td><b>Customer Email Address </b></td><td> <s:input path="email_address" value="${customer.getEmail_address()}"/></td></tr>
<tr><td><b>Customer Contact number </b></td><td> <s:input path="contact_number" value="${customer.getContact_number()}"/></td></tr>
</table>     --%>










<table id="example" cellspacing="0"  class="display" width="60%"> 
 <thead>
<tr>
                <th>Customer Code</th>
                <th>Customer Name</th>
                 <th>Customer Address1</th>
                   <th>Customer Pin Code</th>
                    <th>Customer Email Address</th>
                     <th>Customer Contact Number</th>
                     <th>Created Date</th>
                     <th>Created By</th>
                     <th>Modified Date</th>
                     
                     
                     
                     
<!--                       <th><msg:message code="customer.customerCode"/></th>
                 <th><msg:message code="customer.customerName"/></th>
                  <th><msg:message code="customer.customerAddress1"/></th>
                   <th><msg:message code="customer.customerPinCode"/></th>
                    <th><msg:message code="customer.emailaddress"/></th>
                     <th><msg:message code="customer.contactNumber"/></th>
                      <th><msg:message code="customer.createDate"/></th>
                       <th><msg:message code="customer.createdBy"/></th>
                        <th><msg:message code="customer.modifiedDate"/></th>  
                     
                     
                     
                      -->
                        
                             
            </tr>
        </thead>
        <tbody>
       
               <c:forEach var="list" items="${customer}">
			   <tr>
                    <td><c:out value="${list.getCustomer_code()}" /></td>
                    <td><c:out value="${list.getCustomer_name()}" /></td>
                    <td><c:out value="${list.getCustomer_address1()}" /></td>
                    <td><c:out value="${list.getCustomer_pinCode()}" /></td>
                    <td><c:out value="${list.getEmail_address()}" /></td>
                    <td><c:out value="${list.getContact_number()}" /></td>
                    <td><c:out value="${list.getCreate_date()}" /></td>
                    <td><c:out value="${list.getCreated_by()}" /></td>
                    <td><c:out value="${list.getModified_date()}" /></td>
              

                    </tr>
			</c:forEach>
        </tbody>
        </table>

<script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script>
$(document).ready(function()
{
    $('#example').DataTable();
} );
</script>






               
</s:form>
</body>
</html>