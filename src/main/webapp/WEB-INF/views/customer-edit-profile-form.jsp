<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration Form</title>
</head>
<body>

	<c:set var="customerObj" value="${s_customer_obj}"></c:set>

	<div class="container-fluid my-5">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 edit-customer-form-div">
					<h1>Edit Profile</h1>
					<form action="customerEditProfileForm" method="post">
						<div class="mb-3">
							<label for="email" class="form-label">Email address</label> <input
								type="email" class="form-control" id="email" name="email"
								aria-describedby="emailHelp" value="${customerObj.getEmail()}">
						</div>
						<div class="mb-3">
							<label for="country" class="form-label">Country</label> <input
								type="text" class="form-control" id="country" name="country" value="${customerObj.getCountry()}">
						</div>
						<div class="mb-3">
							<label for="state" class="form-label">State</label> <input
								type="text" class="form-control" id="state" name="state" value="${customerObj.getState()}">
						</div>
						<div class="mb-3">
							<label for="birthDay" class="form-label">Birthday</label> <input
								type="text" class="form-control" id="birthDay" name="birthDay" value="${customerObj.getBirthDay()}">
						</div>
						<div class="mb-3">
							<label for="profession" class="form-label">Profession</label> <input
								type="text" class="form-control" id="profession" name="profession" value="${customerObj.getProfession()}">
						</div>
						<div class="mb-3">
							<label for="gender" class="form-label">Gender</label> <input
								type="text" class="form-control" id="gender" name="gender" value="${customerObj.getGender()}">
						</div>
						<div class="mb-3">
							<label for="github" class="form-label">GitHub</label> <input
								type="text" class="form-control" id="github" name="github" value="${customerObj.getGithub()}">
						</div>
						<div class="mb-3">
							<label for="linkedin" class="form-label">LinkedIn</label> <input
								type="text" class="form-control" id="linkedin" name="linkedin" value="${customerObj.getLinkedin()}">
						</div>
						<div class="mb-3">
							<label for="name" class="form-label">Name</label> <input
								type="text" class="form-control" id="name" name="name" value="${customerObj.getName()}">
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" value="${customerObj.getPassword()}">
						</div>
						<div class="mb-3 text-center">
							<input type="submit" class="btn btn-primary" value="Update" />
						</div>
					</form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
</body>
</html>
