<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="courseList" value="${m_course_details}"></c:set>
    <div class="container-fluid my-5">
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8 border border-secondary-subtle rounded-5 p-5">
                    <div class="text-center">
                        <h1>Register Complaint</h1>
                    </div>
                    <form:form action="customerComplaintRegisterForm" method="post" modelAttribute="complaint" class="py-4" enctype="multipart/form-data">
                        <div class="form-floating mb-3">
                            <form:input path="complaintTitle" class="form-control border border-secondary" placeholder="name@example.com"/>
                            <form:errors path="complaintTitle" cssClass="text-danger" />
                            <label for="complaintTitle">Complaint Title</label>
                        </div>
                        <div class="visually-hidden">
                            <form:input path="customerId" value="${s_customer_obj.getId()}" class="form-control border border-secondary" placeholder="name@example.com"/>
                        </div>
                        <div class="form-floating mb-3">
                            <form:select path="courseComplaintId" class="form-select border border-secondary" aria-label="Floating label select example">
                            	<form:option value="" label="Select course in which you are facing issue" />
                            	<c:forEach var="course" items="${courseList}">
                            		<form:option value="${course.getId()}">${course.getCourseTitle()}</form:option>
                            	</c:forEach>
                            </form:select>
                            <form:errors path="courseComplaintId" cssClass="text-danger" />
                            <label for="courseComplaintId">Select course</label>
                        </div>
                        <div class="form-floating mb-3">
                            <form:textarea path="complaintDescription" class="form-control border border-secondary" placeholder="Leave a comment here" style="height: 150px;"/>
                            <form:errors path="complaintDescription" cssClass="text-danger" />
                            <label for="complaintDescription">Describe Issue</label>
                        </div>
                        <div class="mb-3">
                            <label for="file" class="form-label">Upload Image <span class="text-secondary">(Optional)</span> </label>
                            <input name="file" id="file" class="form-control border border-secondary" type="file"/>
                        </div>
                        <div class="text-center mt-5 d-grid">
                            <input type="submit" class="btn btn-primary" value="Register" />
                        </div>
                    </form:form>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</body>
</html>
