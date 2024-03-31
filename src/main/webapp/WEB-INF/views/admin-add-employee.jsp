<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<c:set var="adminObj" value="${s_admin_obj}"></c:set>

	<c:if test="${empty adminObj}">
		<% response.sendRedirect("/selectLogin"); %>
	</c:if>
	
	<c:set var="status" value="${param.m_add_emp_status}"></c:set>
	
	<c:if test="${empty status}">
		<c:set var="status" value="${m_add_emp_status_failed}"></c:set>
	</c:if>
	
	<jsp:include page="admin-profile-header.jsp"></jsp:include>
	
	<c:if test="${not empty status}">
		<c:if test="${status eq 'failed'}">
			<jsp:include page="admin-emp-added-failed.jsp"></jsp:include>
		</c:if>
		
		<c:if test="${status eq 'success'}">
			<jsp:include page="admin-emp-added-success.jsp"></jsp:include>
		</c:if>
	</c:if>
	

	<jsp:include page="add-emp-form.jsp"></jsp:include>

	<jsp:include page="footer.jsp"></jsp:include>
	
	
	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
