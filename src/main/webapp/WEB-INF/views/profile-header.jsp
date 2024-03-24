<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <header class="header">
        <div class="container">
            <div class="container-fluid py-3">
                <div class="row align-items-center">
                    <div class="col-md-3 text-white fs-3 fw-bold">
                        <a href="index.jsp" class="text-white text-decoration-none">CRM Application</a>
                    </div>
                    <div class="col-md-6"></div>
                    <div class="col-md-3 d-flex align-items-center justify-content-center">
                        <div>
                            <img src="../../resources/images/default-profile-pic.png" width="35" alt="Default Profile Pic"/>
                        </div>
                        <div class="p-1">
                            <a href="profile.jsp" class="text-white text-decoration-none fw-bold">Default Name</a>
                        </div>
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
                                    <li><a class="dropdown-item" href="profile.jsp">View Employees</a></li>
                                    <li><a class="dropdown-item" href="addEmployee">Add Employee</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-danger fw-bold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Products
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">View Products</a></li>
                                    <li><a class="dropdown-item" href="#">Add Product</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-danger fw-bold" href="#">Complaints</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
</body>
</html>
