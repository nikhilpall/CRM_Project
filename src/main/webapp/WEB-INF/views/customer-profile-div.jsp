<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>

	<c:set var="customerObj" value="${s_customer_obj}"></c:set>
	
	<c:set var="profileUrl" value="${customerObj.getImagePath()}"></c:set>
	
	<c:if test="${empty profileUrl}">
		<c:set var="profileUrl" value="images/default-profile-pic.png"></c:set>
	</c:if>

	<div class="container-fluid my-5">
		<div class="container">
			<div class="d-flex">
				<div class="col-md-3 p-2 rounded-4"
					style="border: 1px solid rgb(210, 210, 210);">
					<div class="d-flex">
						<div class="rounded-circle">
							<div onclick="customerEditProfile()" class="rounded-circle customer-profile-image-div"><img class="rounded-circle" src="${profileUrl}" alt="" width="100px"></div>
						</div>
						<div class="ms-3 d-flex flex-column justify-content-center">
							<p class="mb-0">${customerObj.getName()}</p>
						</div>
					</div>

					<div class="d-grid gap-2 my-4 customer-edit-profile-button-div">
						<a href="editCustomerProfile" class="btn fw-bold" type="button">Edit Profile</a href=>
					</div>

					<div>
						<div class="my-3 fs-6 text-dark">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="1em" height="1em" fill="currentColor">
                                <path fill-rule="evenodd"
									d="M20.364 10.364c0 2.814-1.496 5.556-3.956 8.153a25.656 25.656 0 01-3.506 3.072c-.161.116-.28.198-.347.243a1 1 0 01-1.11 0 12.541 12.541 0 01-.347-.243 25.651 25.651 0 01-3.506-3.071c-2.46-2.598-3.956-5.34-3.956-8.154a8.364 8.364 0 0116.728 0zm-7.836 8.997a23.687 23.687 0 002.428-2.22c2.142-2.26 3.408-4.58 3.408-6.777a6.364 6.364 0 00-12.728 0c0 2.196 1.266 4.517 3.408 6.778A23.689 23.689 0 0012 19.769c.166-.124.342-.26.528-.408zM12 12.91a3 3 0 110-6 3 3 0 010 6zm0-2a1 1 0 100-2 1 1 0 000 2z"
									clip-rule="evenodd"></path>
                            </svg>
							${customerObj.getCountry()}
						</div>
						<div class="my-3 fs-6">
							<a class="text-decoration-none text-dark" href="#"><svg xmlns="http://www.w3.org/2000/svg"
									viewBox="0 0 24 24" width="1em" height="1em"
									fill="currentColor">
                            <path fill-rule="evenodd"
										d="M7.061 20.678H3.3V8.572h3.762v12.106zM5.157 7.086C3.97 7.086 3.2 6.242 3.2 5.203c0-1.064.791-1.88 2.006-1.88 1.214 0 1.957.816 1.98 1.88.002 1.042-.767 1.883-2.029 1.883zM20.8 20.678h-3.76v-6.71c0-1.56-.546-2.622-1.907-2.622-1.04 0-1.657.718-1.932 1.41-.099.245-.123.594-.123.939v6.98H9.313v-8.244c0-1.51-.048-2.774-.099-3.862h3.267l.175 1.682h.073c.496-.791 1.71-1.955 3.74-1.955 2.474 0 4.331 1.657 4.331 5.222v7.159z"
										clip-rule="evenodd"></path>
                        </svg> ${customerObj.getLinkedin()}</a>
						</div>
						<div class="my-3 fs-6">
							<a class="text-decoration-none text-dark" href="#"><svg xmlns="http://www.w3.org/2000/svg"
									viewBox="0 0 24 24" width="1em" height="1em"
									fill="currentColor">
                            <path fill-rule="evenodd"
										d="M12.048 2a9.913 9.913 0 00-6.511 2.44 10.308 10.308 0 00-3.407 6.171 10.436 10.436 0 001.323 6.954 10.079 10.079 0 005.422 4.418c.505.095.684-.226.684-.497v-1.744c-2.804.624-3.396-1.378-3.396-1.378a2.738 2.738 0 00-1.115-1.504c-.906-.63.074-.63.074-.63.317.046.62.165.886.348.266.184.488.426.648.71.137.252.32.475.541.655a2.128 2.128 0 001.582.463c.28-.033.551-.122.798-.262a2.198 2.198 0 01.616-1.372c-2.23-.258-4.572-1.14-4.572-5.035a4.013 4.013 0 011.03-2.75 3.813 3.813 0 01.098-2.713s.844-.277 2.76 1.05a9.303 9.303 0 015.028 0c1.917-1.327 2.755-1.05 2.755-1.05.37.85.413 1.811.123 2.693a4.014 4.014 0 011.029 2.75c0 3.94-2.348 4.803-4.584 5.036.24.246.425.542.543.868.118.326.166.674.14 1.02v2.814c0 .333.18.591.69.49a10.085 10.085 0 005.346-4.434 10.437 10.437 0 001.29-6.91 10.31 10.31 0 00-3.373-6.132A9.916 9.916 0 0012.048 2z"
										clip-rule="evenodd"></path>
                        </svg> ${customerObj.getGithub()}</a>
						</div>
					</div>
				</div>

				<div class="p-2 ms-3 rounded-4"
					style="border: 1px solid rgb(210, 210, 210); width: 100%; height: fit-content;">
					<div>
						<table style="width: 100%;">
							<tr>
								<td class="fs-4 fw-bold" colspan="2">Profile Details</td>
							</tr>
							<tr>
								<td class="py-3">Customer Id</td>
								<td class="py-3">${customerObj.getId()}</td>
							</tr>
							<tr>
								<td class="py-3">Name</td>
								<td class="py-3">${customerObj.getName()}</td>
							</tr>
							<tr>
								<td class="py-3">Gender</td>
								<td class="py-3">${customerObj.getGender()}</td>
							</tr>
							<tr>
								<td class="py-3">Email</td>
								<td class="py-3">${customerObj.getEmail()}</td>
							</tr>
							<tr>
								<td class="py-3">Birth Day</td>
								<td class="py-3">${customerObj.getBirthDay()}</td>
							</tr>
							<tr>
								<td class="py-3">Profession</td>
								<td class="py-3">${customerObj.getProfession()}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>