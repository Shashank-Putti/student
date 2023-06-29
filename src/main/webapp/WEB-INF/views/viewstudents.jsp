<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Student List</title>
</head>
<body>
	<h2>Student List</h2>
	<table border="1">
		<tr>
			<th>Student ID</th>
			<th>Student Name</th>
			<th>Father's Name</th>
			<th>Student City</th>
			<th>Marks</th>

			<!-- Add table headers for other classes (3 to 5) similarly -->
		</tr>
		<c:forEach var="student" items="${students}">
			<tr>
				<td>${student.studentid}</td>
				<td>${student.studentName}</td>
				<td>${student.fatherName}</td>
				<td>${student.city}</td>
				<td><a href="delete/${student.studentid}"><button>View Marks</button></a> 
				
			</tr>
		</c:forEach>
	</table>
	<div class="container" text="center">
		<a href="addstudent" class="btn btn-outline-success">Add student</a>
		
		<div class="container" text="center">
		<a href="class1marks" class="btn btn-outline-success">Add Class 1 Marks</a>
		
		<div class="container" text="center">
		<a href="class2marks" class="btn btn-outline-success">Add Class 2 Marks</a>
		
</body>
</html>