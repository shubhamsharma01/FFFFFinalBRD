<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%@taglib uri = "http://www.springframework.org/security/tags" prefix="security"%>
<body>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<nav class="navbar navbar-inverse">
  <div class="container-fluid" >
    <div class="navbar-header">
    <a class="navbar-brand" href="#"><security:authentication property="name"/></a>
    
    </div>
 
    <ul class="nav navbar-header" >
      <li><a href="insert">Add</a></li>
      <li><a href="singleview">View By Id </a></li>
      <li><a href="viewbyname">View By Name</a></li>
      <li><a href="update">Update</a></li>
      <li><a href="delete">Delete</a></li>
      </ul>
 </div>
 </nav>
 <h1><center>Welcome ,<security:authentication property="name"/> </center></h1>
 
</body>
</html>
