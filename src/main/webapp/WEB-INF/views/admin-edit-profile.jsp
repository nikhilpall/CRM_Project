<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<%-- Bootstrap css start --%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<%-- Bootstrap css end --%>
</head>
<body>

	<c:set var="adminObj" value="${s_admin_obj}"></c:set>

	<c:if test="${empty adminObj}">
		<% response.sendRedirect("/selectLogin"); %>
	</c:if>

	<jsp:include page="admin-profile-header.jsp"></jsp:include>

	<jsp:include page="admin-profile-edit-form.jsp"></jsp:include>

	<jsp:include page="footer.jsp"></jsp:include>


	<%-- Bootstrap js start --%>
	<script src="js/bootstrap.bundle.min.js"></script>
	<%-- Bootstrap js end --%>
</body>
</html>