<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="./base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>
</head>
<body>


	<div class="container mt-4">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Add Student Details</h3>


						<form action="add" method="post">
							<div class="form-group">
								<label for="aa">Student ID</label> <input type="number"
									class="form-control" id="aa" name="studentid"
									placeholder="Enter ID">
							</div>
							<div class="form-group">
								<label for="bb">Student Name</label> <input type="text"
									class="form-control" id="bb" name="studentName"
									placeholder="Enter Name">
							</div>

							<div class="form-group">
								<label for="cc">Father Name</label> <input type="text"
									class="form-control" id="cc" name="fatherName"
									placeholder="Enter Father Name">
							</div>

							<div class="form-group">
								<label for="dd">Student City</label> <input type="text"
									class="form-control" id="dd" name="city"
									placeholder="Enter City">
							</div>


							<div class="container text-center">

								<button type="submit" class="btn btn-outline-success">Save</button>
								<a href="${pageContext.request.contextPath}/"
									class="btn btn-secondary">Cancel</a>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

	</form>
</body>
</html>
