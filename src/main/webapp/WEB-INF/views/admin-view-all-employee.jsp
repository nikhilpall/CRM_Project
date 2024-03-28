<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container mt-4">
		<h2 class="text-center mb-4 font-bold">Employee's List</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Job Title</th>
					<th scope="col">Salary</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="emp_list" value="${m_emp_list}"></c:set>

				<c:forEach var="emp" items="${emp_list}">
					<tr>
						<td>${emp.getEmpId()}</td>
						<td>${emp.getEmpName()}</td>
						<td>${emp.getEmpEmail()}</td>
						<td>${emp.getEmpJobTitle()}</td>
						<td>${emp.getEmpSalary()}</td>
						<td><button onclick="employeeDeleteAlert(${emp.getEmpId()})"
							class="btn btn-danger btn-delete"> <svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                    <path
										d="M0 1.5A.5.5 0 0 1 .5 1h15a.5.5 0 0 1 .5.5V3h-16V2h15a.5.5 0 0 1 .5.5v11.793a1 1 0 0 1-.293.707l-7 7a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 .293 15.5L0 15.207V1.5z" />
                                    </svg>
						</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>