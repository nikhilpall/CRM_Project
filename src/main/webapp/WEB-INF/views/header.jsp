<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>

	<c:set var="adminObj" value="${s_admin_obj}"></c:set>
	<c:set var="customerObj" value="${s_customer_obj}"></c:set>
	<c:set var="employeeObj" value="${s_employee_obj}"></c:set>

	<c:choose>
		<c:when test="${not empty adminObj}">
			<jsp:include page="admin-profile-header.jsp"></jsp:include>
		</c:when>
		<c:when test="${not empty customerObj}">
			<jsp:include page="customer-header.jsp"></jsp:include>
		</c:when>
		<c:when test="${not empty employeeObj}"></c:when>
		<c:otherwise>
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
							<div class="col-md-2 login-btn-div">
								<a href="selectLogin" class="btn btn-primary fw-bold"
									type="button">Login</a>
							</div>
						</div>
					</div>
				</div>
			</header>
		</c:otherwise>
	</c:choose>
</body>
</html>
