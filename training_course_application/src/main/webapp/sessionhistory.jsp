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
	<c:if test="${user!= null }">
		
		<div class="container">
			<c:forEach items="${user}" var="user">
			<h1>Hi, <c:out value="${user.fName}"/>. you have selected subject in the past: <b><c:out value="${subject}"/></b></h1>
			</c:forEach>
			<table class="table table-striped">
	 			<head>
	 				<th>No</th>
	 				<th>Date</th>
	 				<th>Course</th>
	 				<th>Teacher</th>
	 				<th>Start Time</th>
	 				<th>End time</th>
	 				
	 			</head>
	 			<body>
	 				<c:forEach items="${requestScope.history }" var="history" varStatus="loop">
	 				<tr>
	 					<td>${loop.count}</td>
	 					<td>${history.sessionDate}</td>
	 					<td>${history.courseName}</td>
	 					<td>${history.teacher}</td>
	 					<td>${history.startTime}</td>
	 					<td>${history.endTime}</td>
	 					
	 				</tr>
	 				
	 				</c:forEach>
	 			
	 			</body>
			</table>
		</div>
	</c:if>
	
	
</body>
</html>