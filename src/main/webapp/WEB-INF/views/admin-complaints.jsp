<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Complaints</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <jsp:include page="admin-profile-header.jsp"></jsp:include>

            <div class="container-fluid p-5" style="border : 2px solid black;">
                <div class="container" style="border : 2px solid red;">
                    <div class="row">
                        <h1 class="mt-5">Admin Complaints</h1>
                        <!-- Complaints Table -->
                        <table class="table table-bordered mt-3">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Complaint ID</th>
                                    <th>Customer Name</th>
                                    <th>Course Title</th>
                                    <th>Issue Description</th>
                                    <th>Status</th>
                                    <th>Date</th> <!-- Added Date Column -->
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample Complaint Data (Replace with Dynamic Data from Backend) -->
                                <tr>
                                    <td>1</td>
                                    <td>John Doe</td>
                                    <td>Java Programming</td>
                                    <td>Unable to access course materials</td>
                                    <td>Open</td>
                                    <td>2024-03-26</td> <!-- Sample Date, Replace with Actual Date -->
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Jane Smith</td>
                                    <td>Data Science Fundamentals</td>
                                    <td>Incorrect billing amount</td>
                                    <td>In Progress</td>
                                    <td>2024-03-25</td> <!-- Sample Date, Replace with Actual Date -->
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Bootstrap JS (Optional, for Bootstrap functionality) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
