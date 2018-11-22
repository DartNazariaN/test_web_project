<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <a class="navbar-brand" href="brandLogo">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Boostrap_logo.svg/144px-Boostrap_logo.svg.png" width="30" height="30" alt="logo">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a href="home" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
                <a href="gallery" class="nav-link">Gallery</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">About us</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link" data-toggle="modal" data-target="#exampleModal">Contact</a>
            </li>
            <sec:authorize access="isAnonymous()">
            <li class="nav-item">
                <a href="#" class="nav-link" data-toggle="modal" data-target="#signUp">Sign in</a>
            </li>
            </sec:authorize>
        </ul>
    </div>
</nav>

<%--Modal WINDOW: "Contacts"--%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">My Contact</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Lviv, Ukraine</p>
                <p>Zelena str.</p>
                <p>(093) 62 04 799</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>

<%--Modal WINDOW: Sign in--%>
<div class="modal fade" id="signUp" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="signUpLabel">Modal Title</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Hello world!!!</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>
<%--Content--%>
<div class="container-fluid">
    <div class="container">
        <div class="row text-center">
            <div class="col-3">
                <sec:authorize access="hasAnyAuthority()">
                    <h3>Registration form</h3>
                    <form action="/saveUser" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="" name="username" placeholder="">
                        <input type="" name="password" placeholder="">
                        <input type="submit" name="Відправити" placeholder="">
                    </form>
                </sec:authorize>

                <h2>Information</h2>
                <p>Some information about this...</p>
            </div>
            <div class="col-6">
                <h2>Information</h2>
                <p>Some information about this...</p>
            </div>
            <div class="col-3">
                <h2>Information</h2>
                <p>Some information about this...</p>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
