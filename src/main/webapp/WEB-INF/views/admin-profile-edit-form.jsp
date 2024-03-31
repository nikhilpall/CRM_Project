<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:set var="adminObj" value="${s_admin_obj}"></c:set>

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 add-course-form-div p-5">
					<h1 class="text-center pb-5">Update Profile</h1>
					<form:form action="editAdminProfileForm" method="post" modelAttribute="admin">
						<div class="mb-3">
							<label for="role" class="form-label">Role</label>
							<input type="text" class="form-control" name="role"
								id="role" value="${adminObj.getRole()}" />
							<form:errors path="role" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="name" class="form-label">Name</label> <input type="text" class="form-control"
								name="name" id="name" value="${adminObj.getName()}" />
							<form:errors path="name" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label> <input type="text" class="form-control"
								name="email" id="email" value="${adminObj.getEmail()}" />
							<form:errors path="email" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label> <input type="text" class="form-control"
								name="password" id="password" value="${adminObj.getPassword()}" />
							<form:errors path="password" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="phoneNo" class="form-label">Phone no</label> <input type="text" class="form-control"
								name="phoneNo" id="phoneNo" value="${adminObj.getPhoneNo()}" />
							<form:errors path="phoneNo" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="address" class="form-label">Address</label> <input type="text" class="form-control"
								name="address" id="address" value="${adminObj.getAddress()}" />
							<form:errors path="address" cssClass="text-danger" />
						</div>
						<div style="display: flex; justify-content: center;">
							<input type="submit" class="btn btn-primary" value="Update" />
						</div>
					</form:form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
</body>
</html>