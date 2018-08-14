<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="css/style.css" media="screen">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<script type="text/javascript">
        window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
</script>

<body >
<center><h1>Welcome to the Login Page</h1></center>
<div class="container">
<div id="login">
${error}
<table align="center" border="3" cellpadding="2">
<form action="j_spring_security_check" method="post">

       
  <p><span class="fontawesome-user"></span>

<tr><td>Enter the UserName : </td><td><input type="text" name="j_username" ></td></tr>       

<tr><td>Enter the Password : </td><td><input type="password" name="j_password" ></td></tr> 

<tr><td><input type="checkbox" name="remember"?></td><td>RememberMe</td></tr>
 
<tr><td></td><td><input type="submit" value="login"></td></tr>

</fieldset>

</form>
</table>
</div>
</div>
</body>
</html>