

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/style.css">
        <%-- Bootstrap css start --%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <%-- Bootstrap css end --%>
    </head>
    <body>
        <jsp:include page="admin-profile-header.jsp"></jsp:include>

            <div class="container-fluid">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8 add-course-form-div p-5">
                            <h1 class="text-center pb-5">Add Course</h1>
                            <form action="myAction">
                                <div class="mb-3">
                                    <label for="courseImage" class="form-label">Course Image</label>
                                    <input type="file" class="form-control" id="courseImage" />
                                </div>
                                <div class="mb-3">
                                    <label for="courseTitle" class="form-label">Course Title</label>
                                    <input type="text" class="form-control" id="courseTitle">
                                </div>
                                <div class="mb-3">
                                    <label for="courseLessons" class="form-label">Course Lessons</label>
                                    <input type="text" class="form-control" id="courseLessons">
                                </div>
                                <div class="mb-3">
                                    <label for="courseFee" class="form-label">Course Actual Price</label>
                                    <input type="text" class="form-control" id="courseFee">
                                </div>
                                <div class="mb-3">
                                    <label for="courseDiscontFee" class="form-label">Course Discount Price</label>
                                    <input type="text" class="form-control" id="courseDiscontFee">
                                </div>
                                <div style="display: flex; justify-content: center;">
                                    <button type="submit" class="btn btn-primary">Add Course</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
            </div>

        <jsp:include page="footer.jsp"></jsp:include>

        <%-- Bootstrap js start --%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <%-- Bootstrap js end --%>
    </body>
</html>
