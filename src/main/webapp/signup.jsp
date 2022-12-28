<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/25/2022
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/styles/signup.css">
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
                            <input type="email" id="email" class="form-control" placeholder="email">
                        </div>
                        <div class="col-12">
                            <div class="name-outer">
                                <input type="text" id="f_name" class="form-control" placeholder="first name">
                                &nbsp;
                                <input type="text" id="l_name" class="form-control" placeholder="last name">
                            </div>
                        </div>
                        <div class="col-12">
                            <input type="text" name="" id="contact" class="form-control" placeholder="contact">
                        </div>
                        <div class="col-12">
                            <input type="password" id="password" class="form-control" placeholder="password">
                        </div>
                        <div class="col-12">
                            <input onclick="signup()" type="button" value="Register" class="btn btn-primary" style="width: 100%">
                        </div>
                        <div class="col-12">
                            <hr>
                        </div>
                        <div class="col-12">
                            <input onclick="navigateToLogin()" type="button" value="Already Have An Account" class="btn btn-dark" style="width: 100%">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="box right">

        </div>

    </div>
</div>

<%--footer--%>
<jsp:include page="MainFooter.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="./js/signup.js"></script>
</body>
</html>
