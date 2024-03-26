<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<jsp:include page="admin-profile-header.jsp"></jsp:include>

	<div class="container">
		<div class="container-fluid">
			<div class="row">
				<div class="alert alert-success alert-dismissible fade show text-center"
					role="alert">
					<strong>Success !</strong> Employee Added successfully
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Close"></button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="add-emp-form.jsp"></jsp:include>

	<jsp:include page="footer.jsp"></jsp:include>


	<%-- Bootstrap js start --%>
	<script src="js/bootstrap.bundle.min.js"></script>
	<%-- Bootstrap js end --%>

</body>
</html>