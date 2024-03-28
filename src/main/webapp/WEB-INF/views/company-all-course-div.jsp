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
			<div class="row view-courses-div">
				<c:set var="course_list" value="${m_course_list}"></c:set>

				<c:forEach var="course" items="${course_list}">
					<div class="card m-4 pt-2" style="width: 19rem;">
						<a href="#"> <img src="${course.getCourseImagePath()}"
							class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${course.getCourseTitle()}</h5>
								<div class="cources-price-div">
									<p class="p1">${course.getCourseLessons()} lessons</p>
									<p class="p2">&#x20B9; ${course.getCourseActualPrice()}</p>
									<p class="p3">&#x20B9; ${course.getCourseDiscountPrice()}</p>
								</div>
							</div>
						</a>
						<div class="row" style="border-top : 1px solid #b0acac;">
							<div class="text-center my-3 col-md-6">
								<a href="editCourse?id=${course.getId()}&imagePath=${course.getCourseImagePath()}" type="button" class="btn btn-info fw-bold">Edit</a>
							</div>
							<div class="text-center my-3 col-md-6">
								<button onclick="courseDeleteAlert(${course.getId()})" type="button" class="btn btn-danger fw-bold">Delete</button>
							</div>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="js/custom.js"></script>
</body>
</html>