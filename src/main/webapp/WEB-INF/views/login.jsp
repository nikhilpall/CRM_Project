<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../../resources/css/style.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>

    <jsp:include page="header.jsp"></jsp:include>

        <div class="bg-light flex justify-center items-center h-screen">
            <div class="container">
                <div class="container-fluid p-4">
                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <div class="p-4 rounded-5 shadow-md login-from-div">
                                <h2 class="text-center text-2xl font-bold mb-6 p-3">Login</h2>
                                <form>
                                    <div class="mb-4">
                                        <label for="email" class="block font-semibold mb-2">Email :</label>
                                        <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                                    </div>
                                    <div class="mb-4">
                                        <label for="password" class="block font-semibold mb-2">Password :</label>
                                        <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
                                    </div>
                                    <div class="login-btn-div p-4">
                                        <button type="submit" class="w-full btn btn-primary font-semibold py-2 px-4 rounded-md">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap JS -->
    <script src="../../resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
