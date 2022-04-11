<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

 <jsp:include page="heading.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    
    <title>Register here</title>
    
</head>
<body>
      
    <form class="container m-5 align-center" method="post" action="RegisterValidate">
        <h1>Register here</h1>
        <div class="row m-3">
            <div class="col">
            <h4>Username</h4>
                <input type="text" name="username" class="form-control" placeholder="Username" required>
            </div>
        </div>
        <div class="row m-3">
          <div class="col">
          <h4>First name</h4>
            <input type="text" class="form-control" placeholder="First name" name="fname" required>
          </div>
          <div class="col">
          <h4>Last name</h4>
            <input type="text" class="form-control" placeholder="Last name" name="lname" required>
          </div>
        </div>
        <div class="row m-3">
            <div class="col">
            <h4>Email</h4>
              <input type="text" class="form-control" placeholder="Email address" name="email" required>
            </div>
            <div class="col">
            <h4>Password</h4>
              <input type="password" class="form-control" placeholder="Password" name="password" required>
            </div>
        </div>

          <button type="submit" class="btn btn-primary">Register</button>
      </form>
  
   
</body>
</html>