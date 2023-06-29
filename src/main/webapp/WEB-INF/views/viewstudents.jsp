<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="./base.jsp"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Student List</title>
</head>
<body>
<tr>
<th>

		<a href="addstudent" class="btn btn-outline-success">Add student</a></th>
		
		
	<th>	<a href="class1marks" class="btn btn-outline-success">Add Class 1 Marks</a></th>
		
		
	<th>	<a href="class2marks" class="btn btn-outline-success">Add Class 2 Marks</a></th> </tr>
	
	
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-8">

				<h4>Student List</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">StudentID</th>
							<th scope="col">Student Name</th>
							<th scope="col">Father Name</th>
							<th scope="col">Student City</th>
				
						</tr>
					</thead>
					<tbody>
	
		<c:forEach var="student" items="${students}">
			<tr>
				<td>${student.studentid}</td>
				<td>${student.studentName}</td>
				<td>${student.fatherName}</td>
				<td>${student.city}</td>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	</div></div></div>
	
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-8">

				<h4>Class 1 Marks</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">StudentID</th>
							<th scope="col">Physics</th>
							<th scope="col">Chemistry</th>
							<th scope="col">Mathematics</th>
							<th scope="col">Biology</th>
				
						</tr>
					</thead>
					<tbody>
	
	<c:forEach var="class1" items="${classes1}">
			<tr>
			    <td>${class1.studentid}</td>
				<td>${class1.physics}</td>
				<td>${class1.chemistry}</td>
				<td>${class1.maths}</td>
				<td>${class1.biology}</td>
				
			</tr>
			</c:forEach>
	
	</table>
	
	</div></div></div>
	
	
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-8">

				<h4>Class 2 Marks</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">StudentID</th>
							<th scope="col">Physics</th>
							<th scope="col">Chemistry</th>
							<th scope="col">Mathematics</th>
							<th scope="col">Biology</th>
				
						</tr>
					</thead>
					<tbody>
	
			<c:forEach var="class2" items="${classes2}">
			<tr>
			    <td>${class2.studentid}</td>
				<td>${class2.physics}</td>
				<td>${class2.chemistry}</td>
				<td>${class2.maths}</td>
				<td>${class2.biology}</td>
				
			</tr>
			</c:forEach>  
		
	</table>
	
	</div></div></div>
		
</body>
</html>