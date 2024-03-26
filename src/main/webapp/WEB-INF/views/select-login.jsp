
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/style.css">
        <%-- Bootstrap css start --%>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <%-- Bootstrap css end --%>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <h1 class="text-center pt-5">Tell us who you are ?</h1>
                <div class="who-you-are-div p-5">
                    <div class="card text-center who-you-are-card">
                        <div style="display: flex; justify-content: center;">
                            <img src="images/admin-logo.png" width="100" alt="Card image cap">
                        </div>
                        <div class="card-body m-auto">
                            <h5 class="card-title fw-bold">I am</h5>
                            <a href="adminLogin" class="btn btn-primary">Admin</a>
                        </div>
                    </div>
                    <div class="card text-center who-you-are-card">
                        <div style="display: flex; justify-content: center;">
                            <img src="images/customer-logo.png" width="100" alt="Card image cap">
                        </div>
                        <div class="card-body m-auto">
                            <h5 class="card-title fw-bold">I am a</h5>
                            <a href="customer-login.jsp" class="btn btn-primary">Customer</a>
                        </div>
                    </div>
                    <div class="card text-center who-you-are-card">
                        <div style="display: flex; justify-content: center;">
                            <img src="images/employee-logo.png" width="100" alt="Card image cap">
                        </div>
                        <div class="card-body m-auto">
                            <h5 class="card-title fw-bold">I am</h5>
                            <a href="employee-login.jsp" class="btn btn-primary">Employee</a>
                        </div>
                    </div>
                </div>
            </div>


        <jsp:include page="footer.jsp"></jsp:include>

        <%-- Bootstrap js start --%>
        <script src="js/bootstrap.bundle.min.js"></script>
        <%-- Bootstrap js end --%>
    </body>
</html>
