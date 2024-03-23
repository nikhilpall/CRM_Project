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
            <div class="container-fluid p-3">
                <div class="row">
                    <div class="col-md-3 fs-4 fw-bold"> <a class="font-style-none text-white" href="index.jsp">CRM Application</a> </div>
                    <div class="col-md-6"></div>
                    <div class="col-md-3">
                        <div class="dropdown">
                            <button class="btn btn-secondary bg-light dropdown-toggle text-dark fs-lg fw-bold" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                More
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Home</a></li>
                                <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                                <li><a class="dropdown-item" href="#">Register</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
</html>
