<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

 <jsp:include page="heading.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The training Department</title>
</head>
<body>
    <div class="container">
        
        <p>Please select the subject you with to attend.</p>
    </div>
    <div class="container">
    <c:if test="${requestScope.course!=null && user != null}">
    	
    	<div class="d-grid gap-2">
    		 <button class="btn btn-secondary btn-lg  dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    			Course selection
  			</button>
  				
		       
		       		<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
				       	<c:forEach items="${requestScope.course}" var="courses" varStatus="loop">
				       	 
			    				<li><a class="dropdown-item" href="month?course=${courses.courseID }&subject=${courses.courseName}" value="${courses.courseID }">${loop.count}. - ${courses.courseName }</a></li>
			    
				       	</c:forEach>
				     </ul>
			</c:if>
			<c:if test="${user == null }">
				<h1>You have not log in! Please log in again!</h1>
			</c:if>
				
       </div>
    </div>
</body>
</html>