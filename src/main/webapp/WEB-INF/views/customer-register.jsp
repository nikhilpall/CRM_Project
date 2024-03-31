<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
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

	<jsp:include page="header.jsp"></jsp:include>

	<div class="wrapper m-auto text-center">
		<h2>Registration</h2>
		<form:form action="customerRegisterForm" method="post"
			modelAttribute="customerRegister">
			<div class="input-box">
				<form:input type="text" path="name" placeholder="Enter your name"
					class="form-control" required="required" />
				<form:errors path="name" cssClass="error-message" />
			</div>
			<div class="input-box">
				<form:input type="text" path="email" placeholder="Enter your email"
					class="form-control" required="required" />
				<form:errors path="email" cssClass="error-message" />
			</div>
			<div class="input-box">
				<form:input type="password" path="password"
					placeholder="Create password" class="form-control"
					required="required" />
				<form:errors path="password" cssClass="error-message" />
			</div>
			<div class="input-box button">
				<input type="submit" value="Register Now" class="btn btn-primary" />
			</div>
			<div class="text">
				<h3>
					Already have an account? <a href="customerLogin">Login now</a>
				</h3>
			</div>
		</form:form>

	</div>


	<jsp:include page="footer.jsp"></jsp:include>


	<%-- Bootstrap js start --%>
	<script src="js/bootstrap.bundle.min.js"></script>
	<%-- Bootstrap js end --%>
</body>
</html>
