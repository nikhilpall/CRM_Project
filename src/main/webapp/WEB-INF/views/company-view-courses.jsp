<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
                    <div class="row text-center pt-4 pb-4"> <h1>Courses</h1> </div>
                    <div class="row view-courses-div">
                        <div class="card mt-4 mb-4" style="width: 19rem;">
                            <a href="#">
                                <img src="images/core-java-course-img.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Core Java Development</h5>
                                    <div class="cources-price-div">
                                        <p class="p1">143 lessons</p>
                                        <p class="p2">&#x20B9; 6000</p>
                                        <p class="p3">&#x20B9; 1999</p>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <%-- Delete This cards --%>
                        <div class="card mt-4 mb-4" style="width: 19rem;">
                            <a href="#">
                                <img src="images/core-java-course-img.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Core Java Development</h5>
                                    <div class="cources-price-div">
                                        <p class="p1">143 lessons</p>
                                        <p class="p2">&#x20B9; 6000</p>
                                        <p class="p3">&#x20B9; 1999</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card mt-4 mb-4" style="width: 19rem;">
                            <a href="#">
                                <img src="images/core-java-course-img.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Core Java Development</h5>
                                    <div class="cources-price-div">
                                        <p class="p1">143 lessons</p>
                                        <p class="p2">&#x20B9; 6000</p>
                                        <p class="p3">&#x20B9; 1999</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card mt-4 mb-4" style="width: 19rem;">
                            <a href="#">
                                <img src="images/core-java-course-img.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Core Java Development</h5>
                                    <div class="cources-price-div">
                                        <p class="p1">143 lessons</p>
                                        <p class="p2">&#x20B9; 6000</p>
                                        <p class="p3">&#x20B9; 1999</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card mt-4 mb-4" style="width: 19rem;">
                            <a href="#">
                                <img src="images/core-java-course-img.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Core Java Development</h5>
                                    <div class="cources-price-div">
                                        <p class="p1">143 lessons</p>
                                        <p class="p2">&#x20B9; 6000</p>
                                        <p class="p3">&#x20B9; 1999</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card mt-4 mb-4" style="width: 19rem;">
                            <a href="#">
                                <img src="images/core-java-course-img.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Core Java Development</h5>
                                    <div class="cources-price-div">
                                        <p class="p1">143 lessons</p>
                                        <p class="p2">&#x20B9; 6000</p>
                                        <p class="p3">&#x20B9; 1999</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="card mt-4 mb-4" style="width: 19rem;">
                            <a href="#">
                                <img src="images/core-java-course-img.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Core Java Development</h5>
                                    <div class="cources-price-div">
                                        <p class="p1">143 lessons</p>
                                        <p class="p2">&#x20B9; 6000</p>
                                        <p class="p3">&#x20B9; 1999</p>
                                    </div>
                                </div>
                            </a>
                        </div>

                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        
        <%-- Bootstrap js start --%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <%-- Bootstrap js end --%>
    </body>
</html>
