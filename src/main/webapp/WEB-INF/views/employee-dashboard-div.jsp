<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        .container {
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: rgb(20,20,43);
        }
        th{
            color: white;
        }
        table td:nth-child(2), table td:nth-child(4){
            font-weight: bold;
        }
    </style>
</head>
<body>

	<c:set var="complaints_list" value="${all_complaints_list}"></c:set>
	<c:set var="course_list" value="${all_course_list}"></c:set>

	<div class="container">
		<div class="text-center">
            <h2>All Complaints</h2>
	    </div>
		
	        <table>
	        	<tr>
		            <th>Complaint ID</th>
		            <th>Course Title</th>
		            <th>Complaint Source</th>
		            <th>Complaint Status</th>
		            <th>Complaint Timestamp</th>
		            <th></th>
		        </tr>
		<c:forEach var="complaint" items="${complaints_list}">
	            <tr>
	                <td>${complaint.getComplaintId()}</td>
	                <td>
	                	<c:forEach var="course" items="${course_list}">
	                		<c:if test="${complaint.getCourseComplaintId() eq course.getId()}">
	                			${course.getCourseTitle()}
	                		</c:if>
	                	</c:forEach>
	                </td>
	                <td>${complaint.getComplaintSource()}</td>
	                <td>${complaint.getComplaintStatus()}</td>
	                <td>${complaint.getComplaintTimestamp()}</td>
	                <td class="text-center"><a class="btn btn-primary" href="openComplaint">View</a></td>
	            </tr>
		</c:forEach>
		</table>
    </div>
</body>
</html>