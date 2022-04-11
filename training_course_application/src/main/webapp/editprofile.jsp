<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

 <jsp:include page="heading.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit profile</title>
</head>
<body>
<c:if test="${user == null}">
	you haven't login
</c:if>

<c:if test="${user != null}">
		<div class="container">
			<h1>Welcome, <c:out value="${user.get(0).getUsername()}"></c:out></h1>
		</div>
		<c:if test="${user.get(0).getUserID() != 6 }">
			<c:forEach items="${user }" var="user" >
				<form class="container m-5 align-center" method="post" action="UpdateProfile">
			        <h1>Edit profile</h1>
			        <div class="row m-3">
			            <div class="col">
			            	<h4>Username</h4>
			                <input type="text" name="username" class="form-control" placeholder="Username" value="${user.username }"required>
			            </div>
			        </div>
			        <div class="row m-3">
			            <div class="col">
			            	<h4>First Name</h4>
			                <input type="text" name="fname" class="form-control" placeholder="first name" value="${user.fName }" required>
			            </div>
			        </div>
			        <div class="row m-3">
			            <div class="col">
			            	<h4>Last Name</h4>
			                <input type="text" name="lname" class="form-control" placeholder="last name" value="${user.lName }" required>
			            </div>
			        </div>
			        
			        <div class="row m-3">
			            
			            <div class="col">
			            <h4>Email</h4>
			              <input type="text" name="email" class="form-control" placeholder="Email" value="${user.email}" required>
			            </div>
			            
			        </div>
			        
			         <div class="row m-3">
			            
			            <div class="col">
			            <h4>Type in your password to confirm changes</h4>
			              <input type="text" name="password" class="form-control" placeholder="Password" required>
			            </div>
			            <label class="text text-warning fs-4">Password is currently not available to change, please contact admin for change</label>
			        </div>
			        
			
			          <button type="submit" class="btn btn-primary m-4">Update</button>
	      		</form>
			
			</c:forEach>
		</c:if>
		<c:if test="${user.get(0).getUserID() == 6 }">
		
			<h1>You're admin, you cannot change anything!</h1>
		</c:if>
</c:if>

</body>
</html>