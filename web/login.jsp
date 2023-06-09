<%@ page import="db.Items" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="container mt-5">
        <div class="row mt-5">
            <div class="col-sm-6 offset-3">
                <h4 class="mb-4">
                    Login
                </h4>

                <%
                    String passError = request.getParameter("passworderror");
                    if (passError!=null){
                %>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    Incorrect password
                    <button type="button" class="close" data-dismiss = "alert" aria-label="Close">
                        <span aria-hidden="true">x</span>
                    </button>

                </div>

                <%
                    }
                %>
                <%
                    String emailError = request.getParameter("emailerror");
                    if (emailError!=null){
                %>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    Incorrect email
                    <button type="button" class="close" data-dismiss = "alert" aria-label="Close">
                        <span aria-hidden="true">x</span>
                    </button>

                </div>

                <%
                    }
                %>

                <form action="/auth" method="post">
                    <div class="form-group mb-4">
                        <label>EMAIL: </label>
                        <input type="text" required class="form-control" name="email">
                    </div>
                    <div class="form-group mb-4">
                        <label>PASSWORD: </label>
                        <input type="password" required class="form-control" name="password">
                    </div>
                    <div class="form-group mb-4">
                        <button class="btn btn-success">LOGIN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
