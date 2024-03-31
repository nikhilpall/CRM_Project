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
	<div class="container-fluid">
		<div class="container">
			<div class="row text-center pt-4 pb-4">
				<h1>Courses</h1>
			</div>
			<div class="row d-flex view-courses-div">
				<c:set var="course_list" value="${m_course_list}"></c:set>

				<c:forEach var="course" items="${course_list}">
					<div class="m-4 pt-2 d-flex flex-column" style="width: 19rem !important;">
						<div class="card rounded-0 flex-grow-1">
							<a href="#"> <img height="150px" src="${course.getCourseImagePath()}"
								class="card-img-top" alt="...">
								<div class="card-body">
									<div class="course-title">
										<h5 class="card-title">${course.getCourseTitle()}</h5>
									</div>
									<div class="cources-price-div">
										<div>
											<p class="text-secondary">${course.getCourseLessons()} lessons</p>
										</div>
										<div class="d-flex justify-content-around">
											<p class="p2">&#x20B9; ${course.getCourseActualPrice()}</p>
											<p class="p3">&#x20B9; ${course.getCourseDiscountPrice()}</p>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>

	<script type="text/javascript" src="js/custom.js"></script>
</body>
</html>