<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/22/2022
  Time: 6:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/styles/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%--header--%>
<jsp:include page="MainHeader.jsp"/>

<div class="outer-login">
    <div class="login-inner">
        <div class="box left">
            <div class="details-outer">
                <h3>Welcome Back</h3>

                <form action="" style="width: 100%">
                    <div class="row" style="margin: 0">
                        <div class="col-12">
                            <input id="email" type="email" class="form-control" placeholder="email">
                        </div>
                        <div class="col-12">
                            <input id="password" type="password" class="form-control" placeholder="password">
                        </div>
                        <div class="col-12">
                            <input type="button" onclick="login()" value="Login" class="btn btn-primary" style="width: 100%">
                        </div>
                        <div class="col-12">
                            <hr>
                        </div>
                        <div class="col-12">
                            <input onclick="navigateToSignup()" type="button" value="Create an Account" class="btn btn-dark" style="width: 100%">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="box right-login">

        </div>

    </div>
</div>

<%--footer--%>
<jsp:include page="MainFooter.jsp"/>

<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js" integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script src="js/login.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
