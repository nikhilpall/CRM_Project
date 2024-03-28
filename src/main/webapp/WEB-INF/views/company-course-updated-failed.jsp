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
<%-- sweet alert css cdn start --%>
<link
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.min.css"
	rel="stylesheet">
<%-- sweet alert css cdn end --%>
</head>
<body>


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
	<script>
	Swal.fire({
		  title: "Failed",
		  text: "Course updation failed due to some error",
		  icon: "error"
		}).then(()=>{
			window.location.href = "/viewCourses";
		});
	</script>
</body>
</html>