<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 add-course-form-div p-5">
					<h1 class="text-center pb-5">Add Course</h1>
					<form:form id="addCourseForm" action="addCourseForm" method="post"
						enctype="multipart/form-data" modelAttribute="course">
						<div class="mb-3">
							<label for="courseImage" class="form-label">Course Image</label>
							<input type="file" class="form-control" name="image"
								id="courseImage" />
						</div>
						<div class="mb-3">
							<label for="courseTitle" class="form-label">Course Title</label>
							<input type="text" class="form-control" name="courseTitle"
								id="courseTitle" />
							<form:errors path="courseTitle" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="courseLessons" class="form-label">Course
								Lessons</label> <input type="text" class="form-control"
								name="courseLessons" id="courseLessons" />
							<form:errors path="courseLessons" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="courseFee" class="form-label">Course Actual
								Price</label> <input type="text" class="form-control"
								name="courseActualPrice" id="courseFee" />
							<form:errors path="courseActualPrice" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="courseDiscountFee" class="form-label">Course
								Discount Price</label> <input type="text" class="form-control"
								name="courseDiscountPrice" id="courseDiscountFee" />
							<form:errors path="courseDiscountPrice" cssClass="text-danger" />
						</div>
						<div style="display: flex; justify-content: center;">
							<input type="submit" class="btn btn-primary" value="Add Course" />
						</div>
					</form:form>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
</body>
</html>
