
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Registration Form</title> 
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/style.css">
        <%-- Bootstrap css start --%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <%-- Bootstrap css end --%>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>
            <div class="wrapper m-auto text-center">
                <h2>Registration</h2>
                <form action="#">
                    <div class="input-box">
                        <input type="text" placeholder="Enter your name" required>
                    </div>
                    <div class="input-box">
                        <input type="text" placeholder="Enter your email" required>
                    </div>
                    <div class="input-box">
                        <input type="password" placeholder="Create password" required>
                    </div>
                    <div class="input-box">
                        <input type="password" placeholder="Confirm password" required>
                    </div>
                    <div class="input-box button">
                        <input type="Submit" value="Register Now">
                    </div>
                    <div class="text">
                        <h3>Already have an account? <a href="customer-login.jsp">Login now</a></h3>
                    </div>
                </form>
            </div>


        <jsp:include page="footer.jsp"></jsp:include>

        <%-- Bootstrap js start --%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <%-- Bootstrap js end --%>
    </body>
</html>
