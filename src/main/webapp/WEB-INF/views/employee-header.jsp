<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP Page</title>
</head>
<body>

	<c:set var="adminObj" value="${s_admin_obj}"></c:set>
	<c:set var="customerObj" value="${s_customer_obj}"></c:set>
	<c:set var="employeeObj" value="${s_employee_obj}"></c:set>
	
	<c:if test="${empty adminObj and empty customerObj and empty employeeObj}">
		<% response.sendRedirect("/selectLogin"); %>
	</c:if>
	
	<c:set var="profileUrl" value="images/default-profile-pic.png"></c:set>
	
	<c:if test="${not empty employeeObj}">
		<c:set var="profileUrl" value="${employeeObj.getEmpProfileImagePath()}"></c:set>
	</c:if>
	
	
	<header class="header">
		<div class="container">
			<div class="container-fluid p-4">
				<div class="row">
					<div class="col-md-5 fw-bold">
						<a class="font-style-none text-black fs-3" href="index.jsp">CRM
							Application</a>
					</div>
					<div class="col-md-5 header-static-links">
						<ul>
							<li><a href="/">Home</a></li>
							<li><a href="aboutUs">About Us</a></li>
							<li><a href="contactUs">Contact Us</a></li>
						</ul>
					</div>
					<div class="col-md-2 header-profile-img-div">
						<div class="dropdown">
							<button class="btn dropdown-toggle" type="button"
								id="dropdownMenuButton" data-bs-toggle="dropdown"
								aria-expanded="false">
								<img class="rounded-circle" src="${profileUrl}"
									alt="Profile Picture" width="40" /> ${customerObj.getName()}
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<li><a class="dropdown-item" href="customerProfile">Profile</a></li>
								<li><a class="dropdown-item" href="logout">Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<nav>
			<div class="profile-second-nav">
				<div class="container">
					<div class="row">
						<nav>
							<ul class="nav justify-content-center">
								<li class="nav-item"> <a class="nav-link text-danger fw-bold" href="empDashboard">Dashboard</a> </li>
								<li class="nav-item"> <a class="nav-link text-danger fw-bold" href="viewCourses">Courses</a> </li>
								<li class="nav-item"><a class="nav-link text-danger fw-bold" href="customerComplaint">Complaints</a></li>
								<li class="nav-item"><a class="nav-link text-danger fw-bold" href="customerAllComplaint">Follow up</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</nav>
	</header>


</body>
</html>
