<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
</head>
<body>
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 add-emp-div pt-5 pb-5">
                <h1 class="text-center mb-4">Add Employee</h1>
                <form:form action="addEmployeeForm" method="post" modelAttribute="employee">
                    <div class="mb-3">
                        <label for="employeeId" class="form-label">Employee ID</label>
                        <form:input type="text" class="form-control" id="employeeId" path="empId"/>
                        <form:errors path="empId" cssClass="text-danger"/>
                    </div>
                    <div class="mb-3">
                        <label for="empName" class="form-label">Employee Name</label>
                        <form:input type="text" class="form-control" id="empName" path="empName"/>
                        <form:errors path="empName" cssClass="text-danger"/>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <form:input type="email" class="form-control" id="email" path="empEmail"/>
                        <form:errors path="empEmail" cssClass="text-danger"/>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <form:input type="password" class="form-control" id="password" path="empPassword"/>
                        <form:errors path="empPassword" cssClass="text-danger"/>
                    </div>
                    <div class="mb-3">
                        <label for="jobTitle" class="form-label">Job Title</label>
                        <form:input type="text" class="form-control" id="jobTitle" path="empJobTitle"/>
                        <form:errors path="empJobTitle" cssClass="text-danger"/>
                    </div>
                    <div class="mb-3">
                        <label for="salary" class="form-label">Salary</label>
                        <form:input type="number" class="form-control" id="salary" path="empSalary"/>
                        <form:errors path="empSalary" cssClass="text-danger"/>
                    </div>
                    <div style="display: flex; justify-content: center;">
                        <input type="submit" class="btn btn-danger" value="Add Employee" />
                    </div>
                </form:form>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</div>
</body>
</html>
