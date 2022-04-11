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
    <title>The training Department</title>
    <script>
	function validateForm() {
		let name = document.forms["summaryForm"]["fullName"].value;
		let email = document.forms["summaryForm"]["email"].value;
		if(name == ""){
				alert("name must be filled out");
				return false;
			}
		if(email == ""){
				alert("email must be filled out");
				return false;
			
			}
		if(confirm('Are you sure the data you fill in are correct? \n submit form are unable to change!')){
			return true;
		}else{
			return false;
		}
	}
	
    </script>
</head>
<body>
    <div class="container">
        
        <p>Please fill in your information</p>
    </div>
    <div class="container">
		     <c:forEach items="${requestScope.session}" var="session">
		     <form name="summaryForm" action="summary" method="post" onsubmit="return validateForm()">
			       	<h2>Please fill in the form</h2>
			        <div class="mb-3 row">
				    	<label for="subject" class="col-sm-2 col-form-label">Subject</label>
				    	<div class="col-sm-10">
				      		<input type="text" readonly class="form-control-plaintext" name="subject" value="<c:out value="${session.courseName}"></c:out>">
				    	</div>
			  		</div>
			  		 <div class="mb-3 row row-cols-3">
			  		 
				    	<label for="date" class="col-sm-2 col-form-label">Date</label>
				    	<div class="col-sm-10">
				      		<input type="text" readonly class="form-control-plaintext" name="date" value="<c:out value="${session.sessionDate}"></c:out>">
				    	</div>
				    	<label for="starttime" class="col-sm-2 col-form-label">Start time:</label>
				    	<div class="col-sm-10">
				      		<input type="text" readonly class="form-control-plaintext" name="startTime" value="<c:out value="${session.startTime}"></c:out>">
				    	</div>
				    	<label for="endtime" class="col-sm-2 col-form-label">End time:</label>
				    	<div class="col-sm-10">
				      		<input type="text" readonly class="form-control-plaintext" name="endTime" value="<c:out value="${session.endTime}"></c:out>">
				    	</div>
			  		</div>
			  		<div class="mb-3 row row-cols-3">
			  			<label for="date" class="col-sm-2 col-form-label">Full Name</label>
				    	<div class="col-sm-10">
				      		<input type="text" class="form-control m-2 p-1" name="fullName" placeholder="John Smith">
				    	</div>
				    	<label for="date" class="col-sm-2 col-form-label">Email</label>
				    	<div class="col-sm-10">
				      		<input type="email" class="form-control m-2 p-1" name="email" placeholder="email@example.com">
				    	</div>
				    </div>
				  <button class="btn btn-primary" type="submit">Submit</button>  
			</form>
		</c:forEach>  
	</div>
</body>
</html>