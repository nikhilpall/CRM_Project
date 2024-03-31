<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<%-- Bootstrap css start --%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<%-- Bootstrap css end --%>
<%-- sweet alert css cdn start --%>
<link
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.min.css"
	rel="stylesheet">
<%-- sweet alert css cdn end --%>
<!-- Include Cropper.js CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.12/cropper.min.css"
	rel="stylesheet">
</head>

<body>

	<c:set var="adminObj" value="${s_admin_obj}"></c:set>
	<c:set var="customerObj" value="${s_customer_obj}"></c:set>
	<c:set var="employeeObj" value="${s_employee_obj}"></c:set>
	
	<c:if test="${empty adminObj and empty customerObj and empty employeeObj}">
		<% response.sendRedirect("/selectLogin"); %>
	</c:if>
	
		<jsp:include page="header.jsp"></jsp:include>

		<jsp:include page="admin-profile-div.jsp"></jsp:include>

		<jsp:include page="footer.jsp"></jsp:include>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.11/cropper.min.js"></script>

	<%-- custom js start --%>
	<script type="text/javascript" src="js/custom.js"></script>
	<%-- custom js end --%>

	<%-- sweet alert js cdn start --%>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.all.min.js"></script>
	<%-- sweet alert js cdn end --%>

	<%-- Bootstrap js start --%>
	<script src="js/bootstrap.bundle.min.js"></script>
	<%-- Bootstrap js end --%>
</body>

</html>