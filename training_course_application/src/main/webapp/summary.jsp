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
    
</head>
<body>
    <div class="container">
        
        <h2 class="m-3 text-success">Summary will be sent to your email</h2>
        <h2 class="m-3 text-success"><c:out value="${account_saved}"></c:out></h2>
    </div>
    <div class="container">
		     
		       	<h2>Summary</h2>
		        <div class="mb-3 row">
			    	<label for="subject" class="col-sm-2 col-form-label">Subject</label>
			    	<div class="col-sm-10">
			      		<input type="text" readonly class="form-control-plaintext" name="subject" value="<c:out value="${subject}"></c:out>">
			    	</div>
			    	<label for="subject" class="col-sm-2 col-form-label">Teacher</label>
			    	<div class="col-sm-10">
			      		<input type="text" readonly class="form-control-plaintext" name="subject" value="Teacher <c:out value="${teacher}"></c:out>">
			    	</div>
		  		</div>
		  		 <div class="mb-3 row row-cols-3">
		  		 
			    	<label for="date" class="col-sm-2 col-form-label">Date</label>
			    	<div class="col-sm-10">
			      		<input type="text" readonly class="form-control-plaintext" name="date" value="<c:out value="${date}"></c:out>">
			    	</div>
			    	<label for="starttime" class="col-sm-2 col-form-label">Start time:</label>
			    	<div class="col-sm-10">
			      		<input type="text" readonly class="form-control-plaintext" name="startTime" value="<c:out value="${startTime}"></c:out>">
			    	</div>
			    	<label for="endtime" class="col-sm-2 col-form-label">End time:</label>
			    	<div class="col-sm-10">
			      		<input type="text" readonly class="form-control-plaintext" name="endTime" value="<c:out value="${endTime}"></c:out>">
			    	</div>
		  		</div>
		  		<div class="mb-3 row row-cols-3">
		  			<label for="date" class="col-sm-2 col-form-label">Full Name</label>
			    	<div class="col-sm-10">
			      		<input type="text" readonly class="form-control m-2 p-1" name="fullName" value="<c:out value="${name}"></c:out>">
			    	</div>
			    	<label for="date" class="col-sm-2 col-form-label">Email</label>
			    	<div class="col-sm-10">
			      		<input type="text" readonly class="form-control m-2 p-1" name="email" value="<c:out value="${email}"></c:out>">
			    	</div>
			    </div>
			    
	</div>
</body>
</html>