<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="adminObj" value="${s_admin_obj}"></c:set>
	<c:set var="customerObj" value="${s_customer_obj}"></c:set>
	<c:set var="employeeObj" value="${s_employee_obj}"></c:set>
	
	<c:if test="${not empty adminObj or not empty employeeObj}">
		<jsp:include page="company-all-course-div.jsp"></jsp:include>
	</c:if>
	
	<c:if test="${not empty customerObj}">
		<jsp:include page="customer-all-course-div.jsp"></jsp:include>
	</c:if>
	
</body>
</html>