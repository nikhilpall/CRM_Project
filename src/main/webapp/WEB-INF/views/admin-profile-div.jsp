<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<main>
		<c:set var="profileUrl" value="${m_profile_url}"></c:set>
		
		<c:if test="${empty profileUrl}">
			<c:set var="profileUrl" value="images/default-profile-pic.png"></c:set>
		</c:if>
		
		<div class="container-fluid admin-profile-div my-5">
			<div class="container">
				<div class="row py-5">
					<div class="col-md-4 text-center admin-image-div">
						<img class="rounded-circle" src="${profileUrl}" alt="default image">
						<div class="admin-edit-profile-div">
							<button onclick="selectAdminImage()">
								<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
									xmlns:xlink="http://www.w3.org/1999/xlink" width="40"
									height="40" x="0" y="0" viewBox="0 0 512 511"
									style="enable-background: new 0 0 512 512" xml:space="preserve"
									class="">
									<g>
									<path fill="#607d8b"
										d="M362.668 512.484H64c-35.285 0-64-28.714-64-64V149.816c0-35.285 28.715-64 64-64h170.668c11.797 0 21.332 9.559 21.332 21.336 0 11.774-9.535 21.332-21.332 21.332H64c-11.777 0-21.332 9.578-21.332 21.332v298.668c0 11.754 9.555 21.332 21.332 21.332h298.668c11.773 0 21.332-9.578 21.332-21.332V277.816c0-11.773 9.535-21.332 21.332-21.332s21.336 9.559 21.336 21.332v170.668c0 35.286-28.715 64-64 64zm0 0"
										opacity="1" data-original="#607d8b" class=""></path>
									<g fill="#42a5f5">
									<path
										d="M368.813 68.262 200.02 237.05a10.793 10.793 0 0 0-2.922 5.437l-15.082 75.438c-.703 3.496.406 7.101 2.922 9.64a10.673 10.673 0 0 0 7.554 3.114c.68 0 1.387-.063 2.09-.211l75.414-15.082c2.09-.43 3.988-1.43 5.461-2.926l168.79-168.79zM496.383 16.102c-20.797-20.801-54.633-20.801-75.414 0l-29.524 29.523 75.414 75.414 29.524-29.527C506.453 81.465 512 68.066 512 53.816s-5.547-27.648-15.617-37.714zm0 0"
										fill="#42a5f5" opacity="1" data-original="#42a5f5"></path></g></g></svg>
							</button>
						</div>
					</div>
					<div
						class="col-md-8 d-flex flex-column justify-content-center admin-details-div">
						<table>
							<tbody>
								<tr>
									<td>Role</td>
									<td>Super Admin</td>
								</tr>
								<tr>
									<td>Name</td>
									<td>Admin</td>
								</tr>
								<tr>
									<td>Email</td>
									<td>admin@gmail.com</td>
								</tr>
								<tr>
									<td>Phone no</td>
									<td>9999999999</td>
								</tr>
								<tr>
									<td>Address</td>
									<td>Plot no 417, Hanuman Nagar, Nagpur</td>
								</tr>
							</tbody>
						</table>
						<div class="admin-edit-details-div">
							<button>
								<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
									xmlns:xlink="http://www.w3.org/1999/xlink" width="40"
									height="40" x="0" y="0" viewBox="0 0 512 511"
									style="enable-background: new 0 0 512 512" xml:space="preserve"
									class="">
									<g>
									<path fill="#607d8b"
										d="M362.668 512.484H64c-35.285 0-64-28.714-64-64V149.816c0-35.285 28.715-64 64-64h170.668c11.797 0 21.332 9.559 21.332 21.336 0 11.774-9.535 21.332-21.332 21.332H64c-11.777 0-21.332 9.578-21.332 21.332v298.668c0 11.754 9.555 21.332 21.332 21.332h298.668c11.773 0 21.332-9.578 21.332-21.332V277.816c0-11.773 9.535-21.332 21.332-21.332s21.336 9.559 21.336 21.332v170.668c0 35.286-28.715 64-64 64zm0 0"
										opacity="1" data-original="#607d8b" class=""></path>
									<g fill="#42a5f5">
									<path
										d="M368.813 68.262 200.02 237.05a10.793 10.793 0 0 0-2.922 5.437l-15.082 75.438c-.703 3.496.406 7.101 2.922 9.64a10.673 10.673 0 0 0 7.554 3.114c.68 0 1.387-.063 2.09-.211l75.414-15.082c2.09-.43 3.988-1.43 5.461-2.926l168.79-168.79zM496.383 16.102c-20.797-20.801-54.633-20.801-75.414 0l-29.524 29.523 75.414 75.414 29.524-29.527C506.453 81.465 512 68.066 512 53.816s-5.547-27.648-15.617-37.714zm0 0"
										fill="#42a5f5" opacity="1" data-original="#42a5f5"></path></g></g></svg>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>