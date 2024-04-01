<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<%-- Bootstrap css start --%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<%-- Bootstrap css end --%>

</head>
<body>

	<c:set var="adminObj" value="${s_admin_obj}"></c:set>
	<c:set var="customerObj" value="${s_customer_obj}"></c:set>
	<c:set var="employeeObj" value="${s_employee_obj}"></c:set>
	
	<c:if test="${empty adminObj and empty customerObj and empty employeeObj}">
		<% response.sendRedirect("/selectLogin"); %>
	</c:if>
	
	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="customer-register-complaint-div.jsp"></jsp:include>

	<jsp:include page="footer.jsp"></jsp:include>
	

	<%-- Bootstrap js start --%>
	<script src="js/bootstrap.bundle.min.js"></script>
	<%-- Bootstrap js end --%>
</body>
</html>