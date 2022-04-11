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
    <style>
	    #loading {
	  position: fixed;
	  display: block;
	  width: 100%;
	  height: 100%;
	  top: 0;
	  left: 0;
	  text-align: center;
	  opacity: 0.7;
	  background-color: #fff;
	  z-index: 99;
	}
	
	#loading-image {
	  position: absolute;
	  top: 100px;
	  left: 240px;
	  z-index: 100;
	}
    </style>
</head>
<body>
	<c:if test="${requestScope.subject != null || requestScope.session_time != null }">
		
		<div class="container">
			<h1>you have selected subject: <b><c:out value="${subject}"/></b></h1>
			<table class="table table-striped">
	 			<head>
	 				<th>No</th>
	 				<th>Date</th>
	 				<th>Start Time</th>
	 				<th>End time</th>
	 				<th>Register slot</th>
	 			</head>
	 			<body>
	 				<c:forEach items="${requestScope.session_time }" var="session" varStatus="loop">
	 				<tr>
	 					<td>${loop.count}</td>
	 					<td>${session.sessionDate}</td>
	 					<td>${session.startTime}</td>
	 					<td>${session.endTime}</td>
	 					<td>
		 					<form action="summary" method="post">
		 						<button name="sessionid"  value="${session.sessionID}" class="btn btn-lg btn-secondary">Register</a>
		 						
		 					</form>
	 					</td>
	 				</tr>
	 				
	 				</c:forEach>
	 			
	 			</body>
			</table>
		</div>
	</c:if>
	
	
</body>
</html>