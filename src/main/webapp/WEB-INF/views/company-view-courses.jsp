<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<div class="row text-center pt-4 pb-4">
				<h1>Courses</h1>
			</div>
			<div class="row view-courses-div">
				<c:set var="course_list" value="${m_course_list}"></c:set>

				<c:forEach var="course" items="${course_list}">
					<div class="card m-4 pt-2" style="width: 19rem;">
						<a href="#"> <img src="${course.getCourseImagePath()}"
							class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${course.getCourseTitle()}</h5>
								<div class="cources-price-div">
									<p class="p1">${course.getCourseLessons()}lessons</p>
									<p class="p2">&#x20B9; ${course.getCourseActualPrice()}</p>
									<p class="p3">&#x20B9; ${course.getCourseDiscountPrice()}</p>
								</div>
							</div>
						</a>
						<div class="text-center d-grid gap-2 my-3">
							<a href="editCourse?id=${course.getId()}" type="button" class="btn btn-danger fw-bold">Edit</a>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<%-- Bootstrap js start --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<%-- Bootstrap js end --%>
</body>
</html>
