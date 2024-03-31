<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- sweet alert CSS -->
<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.min.css" rel="stylesheet">
</head>
<body>

	<!-- Sweet alert JS -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.7/dist/sweetalert2.all.min.js"></script>
	
	<script>
		function myFun(){
			Swal.fire({
				icon : "error",
				title : "Oops...",
				text : "Something went wrong! Employee not added"
			});
		}
		
		myFun();
	</script>
</body>
</html>