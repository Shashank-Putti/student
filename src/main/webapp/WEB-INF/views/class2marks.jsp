<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Class 2 marks</h2>
<form action="savemarks2" method="post">
         <label for="class1">Enter student id:</label>
        <input type="number" id="class1" name="studentid"><br><br>
        Physics: <input type="number" id="class1PhyMarks" name="physics">
        Chemistry: <input type="number" id="class1ChemMarks" name="chemistry">
        Biology: <input type="number" id="class1BioMarks" name="biology">
        Maths:  <input type="number" id="class1mathMarks" name="maths"><br><br>
        
        <button type="submit">Save</button>  <a href="${pageContext.request.contextPath}/"
			class="btn btn-secondary">Cancel</a>
	
    </form>

</body>
</html>