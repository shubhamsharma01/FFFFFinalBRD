<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User Records</h1>
 <table id="example" cellspacing="0"  class="display" width="60%"> 
 <thead>
<tr>
                <th>User Id</th>
                <th>Enabled</th>
                 <th>Password</th>
                   <th>Username</th>
                    <th>RoleID</th>         
            </tr>
        </thead>
        <tbody>
       
               <c:forEach var="list" items="${c}">
			   <tr>
                    <td><c:out value="${list.getUserId()}" /></td>
                    <td><c:out value="${list.getEnabled()}" /></td>
                    <td><c:out value="${list.getPassword}" /></td>
                    <td><c:out value="${list.getUsername()}" /></td>
                    <td><c:out value="${list.getrole.roleId}" /></td>
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
</body>
</html>