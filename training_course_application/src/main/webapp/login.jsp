
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Login </title>
    
</head>
<body>
     

    
    <form class="container m-5 align-center" method="post" action="loginValidate">
        <h1>Login</h1>
        <div class="row m-3">
            <div class="col">
            <h4>Username /Email</h4>
                <input type="text" name="username" class="form-control" placeholder="Username/ Password" required>
            </div>
        </div>
        
        <div class="row m-3">
            
            <div class="col">
            <h4>Password</h4>
              <input type="text" name="password" class="form-control" placeholder="Password"  required>
            </div>
        </div>

          <button type="submit" class="btn btn-primary m-4">Login</button>
          <a href="register">No account? Register here</a>
      </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
   
</body>
</html>