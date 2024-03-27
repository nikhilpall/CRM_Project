

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

        <jsp:include page="company-edit-course-form.jsp"></jsp:include>

        <jsp:include page="footer.jsp"></jsp:include>

        <%-- Bootstrap js start --%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <%-- Bootstrap js end --%>
    </body>
</html>
