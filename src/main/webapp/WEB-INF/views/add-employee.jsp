<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- Custom CSS -->
<link rel="stylesheet" href="../../resources/css/style.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="profile-header.jsp" />


	<div class="container bg-light">
		<div class="container-fluid pt-5 pb-5">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10 pt-5 pb-5 add-emp-div">
					<h1 class="text-center mb-4 fs-2 fw-bold text-success p-3">Add
						Employee</h1>
					<form>
						<div class="row">
							<div class="col-md-6">
								<div class="mb-3">
									<label for="firstName" class="form-label">First Name</label> <input
										type="text" class="form-control" id="firstName"
										name="firstName">
								</div>
								<div class="mb-3">
									<label for="lastName" class="form-label">Last Name</label> <input
										type="text" class="form-control" id="lastName" name="lastName">
								</div>
								<div class="mb-3">
									<label for="dateOfBirth" class="form-label">Date of
										Birth</label> <input type="date" class="form-control" id="dateOfBirth"
										name="dateOfBirth">
								</div>
								<div class="mb-3">
									<label for="gender" class="form-label">Gender</label> <select
										class="form-select" id="gender" name="gender">
										<option value="Male">Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="mb-3">
									<label for="department" class="form-label">Department</label> <input
										type="text" class="form-control" id="department"
										name="department">
								</div>
								<div class="mb-3">
									<label for="jobTitle" class="form-label">Job Title</label> <input
										type="text" class="form-control" id="jobTitle" name="jobTitle">
								</div>
								<div class="mb-3">
									<label for="salary" class="form-label">Salary</label> <input
										type="number" class="form-control" id="salary" name="salary">
								</div>
							</div>
						</div>
						<div class="text-center p-3">
							<button type="submit" class="btn btn-danger">Add
								Employee</button>
						</div>
					</form>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Bootstrap JS -->
	<script src="../../resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
