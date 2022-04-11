<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
     <jsp:include page="heading.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Import your data here</title>
</head>
<body>
	
	<c:if test="${user == null}">
		<h1>You are not allowed to enter here.</h1>
	</c:if>
	<c:if test="${user != null}">
		<div class="container">
			<h1>Welcome to the import page Admin.</h1>
			<form action="import" class="m-1 p-4 bg bg-light"method="post" enctype="multipart/form-data">
				<div class="row">
				<h2 >Select you csv file</h2>
				
				</div>
				<input name="csvfile" type="file" 
				accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" >
				<button type="submit" value="submit">Upload</button>
				<c:if test="${requestScope.importsession ==null }">
					<div class="container-fluid m-2">
					
						<h1>How to import?</h1>
					<p>Make sure to open an excel and enter the value accordingly to the heading</p>
					<h3 class="text text-danger"><B>WARNING ! DATA INSIDE THE DATA IN THE SPREADSHEET CANNOT BE SKIP LINE OR EMPTY COLUMN, THE SYSTEM WILL CRASH! MAKE SURE THE SPREADSHEET BEFORE UPLOAD IT!</B></h3>
					<img src="img/Capture.PNG" alt=""  class="img-thumbnail">
					<table>
						<tr>
							<td>Date</td>
							<td>Teacher name</td>
							<td>start Time</td>
							<td>end Time</td>
							<td>course Name</td>
						</tr>
					</table>
					<p>Ensure you are placing the heading so you can remember, the system will also ignore the first line as it usually a header.</p>
					<p>Make sure you set your date format into image below</p>
					<img src="img/capture2.PNG" alt=""  class="img-thumbnail">
					<p>To check if your csv file is in correct format(especially the date, will cause system error if not done correctly), open the csv using notepad
					<img src="img/notepad.png" alt=""  class="img-thumbnail">
					<h3 class="text text-danger"><B>WARNING ! DATA INSIDE THE SPREADSHEET CANNOT BE SKIP LINE OR EMPTY COLUMN, THE SYSTEM WILL CRASH! MAKE SURE THE DATA IN SPREADSHEET BEFORE UPLOAD IT!</B></h3>
					</div>
				</c:if>

			
		</form>
		
		</div>
		<c:if test="${requestScope.importsession !=null }">
			<div class="container m-5">
			<h1>Data import overview</h1>
			<p>Data has successfully imported to database. Here are the summary</p>
			
				<table class="table table-striped">
					<thead>
						<th>Date</th>
						<th>Course Name</th>
						<th>Course Teacher</th>
						<th>Start time</th>
						<th>End time</th>
					</thead>
					<c:forEach items="${requestScope.importsession }" var="imports" varStatus="loop">
					<tbody>
						<td>${imports.sessionDate}</td>
						<td>${imports.courseName}</td>
						<td>${imports.teacher}</td>
						<td>${imports.startTime}</td>
						<td>${imports.endTime}</td>
					</tbody>
					</c:forEach>

				</table>
			</div>
		
		</c:if>
		
	</c:if>
	
</body>
</html>