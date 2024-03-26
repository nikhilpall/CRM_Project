<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="header">
            <div class="container">
                <div class="container-fluid p-4">
                    <div class="row">
                        <div class="col-md-5 fw-bold"> <a class="font-style-none text-black fs-3" href="index.jsp">CRM Application</a> </div>
                        <div class="col-md-5 header-static-links">
                            <ul>
                                <li> <a href="/">Home</a> </li>
                                <li> <a href="about-us.jsp">About Us</a> </li>
                                <li> <a href="contact-us.jsp">Contact Us</a> </li>
                            </ul>
                        </div>
                        <div class="col-md-2 header-profile-img-div">
                            <img src="images/default-profile-pic.png" alt="alt" width="40"/>
                            <a href="#" >Nikhil Pall</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="profile-second-nav">
                <div class="container">
                    <div class="row">
                        <nav>
                            <ul class="nav justify-content-center">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-danger fw-bold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Employees
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="adminDashboard">View Employees</a></li>
                                        <li><a class="dropdown-item" href="addEmployee">Add Employee</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle text-danger fw-bold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Courses
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="company-view-courses.jsp">View Courses</a></li>
                                        <li><a class="dropdown-item" href="add-course.jsp">Add Course</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-danger fw-bold" href="admin-complaints.jsp">Complaints</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
