<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        table {
            width: 100%;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #dee2e6;
        }

        .btn-accept {
            background-color: #28a745;
            color: #fff;
        }

        .btn-status {
            background-color: #007bff;
            color: #fff;
        }
</style>
</head>
<body>
	<div class="container py-4">
        <form action="" method="post">
            <table>
                <tr>
                    <th>Complaint ID</th>
                    <td>1</td>
                    
                </tr>
                <tr>
                    <th>Complaint Title</th>
                    <td>Course Video is Not Working</td>
                    
                </tr>
                <tr>
                    <th>Assigned To</th>
                    <td>None</td>
                    
                </tr>
                <tr>
                    <th>Description</th>
                    <td>Whenever I open the Java lecture, the video automatically stops.</td>
                    
                </tr>
                <tr>
                    <th>Complaint Source</th>
                    <td>Website</td>
                    
                </tr>
                <tr>
                    <th>Complaint Status</th>
                    <td>Open</td>
                </tr>
                <tr>
                    <th>Complained Course</th>
                    <td>Java Developer</td>
                    
                </tr>
                <tr>
                    <th>Customer Name</th>
                    <td>Lucifer Morningstar</td>
                    
                </tr>
                <tr>
                    <th>Follow-up Date</th>
                    <td>01/01/2024</td>
                    
                </tr>
                <tr>
                    <th>Resolution</th>
                    <td>
                        <div class="form-floating">
                            <textarea class="form-control border-black" style="height: 100px;" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
                            <label for="floatingTextarea" class="text-secondary">write comment</label>
                        </div>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" class="text-center"><input class="btn btn-primary" type="submit" value="Resolve"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>