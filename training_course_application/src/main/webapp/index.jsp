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
    <script src="https://kit.fontawesome.com/679c5a3693.js" crossorigin="anonymous"></script>
    <title>The training Department</title>
    
</head>
<body>
   <c:if test="${user != null }">
   
  
    <div class="container">
    	
    	<c:forEach items="${user}" var="user">
    		
    		<c:if test="${user.userID != 6}">
    			<h2>Welcome ${user.fName} ${user.lName} </h2>
    			 <h1>To join our class, click the button below</h1>
    			 <a href="course" class="btn btn-primary btn-lg" tabindex="-1" role="button" aria-disabled="true">Course</a>
    		</c:if>
    		<c:if test="${user.userID == 6}">
    			<h1>Welcome Admin!</h1>
    			<h2>Please select the operation</h2>
    			<div class="row">
	    			 <div class="col-4">
	    			 
	    			 	<a href="import.jsp" class="btn btn-primary btn-lg" tabindex="-1" role="button" 
	    			 	aria-disabled="true"><i class="fa-solid fa-file-csv"></i> Import from spreadsheet</a>
	    			 </div>
	    			  
    			 </div>
    			 
    			 	
	     	</c:if>
	      
       </c:forEach>
      
    </div>
   </c:if>
  
    <c:if test="${user == null }">
    	<div class="container">
     
       <h1>To join our class, please register or login.</h1>
       
       <a href="login" class="btn btn-primary btn-lg" tabindex="-1" role="button" aria-disabled="true">Login</a>
       
       <a href="register" class="btn btn-primary btn-lg" tabindex="-1" role="button" aria-disabled="true">Register</a>
    </div>
    </c:if>
</body>
</html>