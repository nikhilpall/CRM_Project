<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">
<%-- Bootstrap css start --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%-- Bootstrap css end --%>
</head>
<body>

	<jsp:include page="admin-profile-header.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="alert alert-success alert-dismissible fade show text-center" role="alert">
				  <strong>Success !</strong> Course updated Successfully
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="company-all-course-div.jsp"></jsp:include>

	<jsp:include page="footer.jsp"></jsp:include>

	<%-- Bootstrap js start --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<%-- Bootstrap js end --%>
</body>
</html>
