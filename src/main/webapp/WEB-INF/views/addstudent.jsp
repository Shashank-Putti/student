<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
</head>
<body>
    <h2>Add Student</h2>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
</head>
<body>
    <h2>Add Student</h2>
    <form action="add" method="post">
    
        <label for="studentId">Student ID:</label>
        <input type="number" id="studentId" name="studentid"><br><br>
        
        <label for="studentName">Student Name:</label>
        <input type="text" id="studentName" name="studentName"><br><br>
        
        <label for="fatherName">Father's Name:</label>
        <input type="text" id="fatherName" name="fatherName"><br><br>
        
        <label for="studentId">Student City:</label>
        <input type="text" id="studentId" name="city"><br><br>
        
        
        
        
        
       <button type="submit">Save</button>  <a href="${pageContext.request.contextPath}/"
			class="btn btn-secondary">Cancel</a>
	
    </form>
</body>
</html>
