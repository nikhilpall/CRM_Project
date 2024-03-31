<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%-- sweet alert css cdn start --%>
<link
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.min.css"
	rel="stylesheet">
<%-- sweet alert css cdn end --%>
</head>
<body>

	<%-- sweet alert js cdn start --%>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.all.min.js"></script>
	<%-- sweet alert js cdn end --%>
	
	<script>
		Swal.fire({
			  icon : "error",
			  title: "Profile not update due to some error",
			  showClass: {
			    popup: `
			      animate__animated
			      animate__fadeInUp
			      animate__faster
			    `
			  },
			  hideClass: {
			    popup: `
			      animate__animated
			      animate__fadeOutDown
			      animate__faster
			    `
			  }
			}).then(()=>{
				window.location.href = "/customerProfile";
			});
	</script>
</body>
</html>