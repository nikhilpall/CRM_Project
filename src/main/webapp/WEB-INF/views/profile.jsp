<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<!-- Custom CSS -->
<link rel="stylesheet" href="../../resources/css/style.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>

	<jsp:include page="profile-header.jsp"></jsp:include>


	<div class="container mt-4">
		<h2 class="text-center mb-4 font-bold">Employee's List</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Firstname</th>
					<th scope="col">Lastname</th>
					<th scope="col">Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
				<tr>
					<td>Jane</td>
					<td>Doe</td>
					<td>jane@example.com</td>
				</tr>
				<!-- Add more rows here -->
			</tbody>
		</table>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Bootstrap JS -->
	<script src="../../resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
