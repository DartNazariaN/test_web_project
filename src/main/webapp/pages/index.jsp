<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>

<html lang="en">
<head>
    <title>web_java_project</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Owns stylesheets -->
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../img/**">
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
            <sec:authorize access="isAuthenticated()">
            <li class="nav-item active">
                <a href="#" class="nav-link">Home</a>
            </li>
            </sec:authorize>
            <li class="nav-item" >
                <a href="gallery" class="nav-link">Gallery</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link" data-toggle="modal" data-target="#exampleModal">Contact</a>
            </li>
            <%--<sec:authorize access="isAnonymous()">--%>
                <li class="nav-item">
                    <a href="#" class="nav-link" data-toggle="modal" data-target="#sigIn">Sign in</a>
                </li>
            <%--</sec:authorize>--%>
            <li class="nav-item">
                <a>or</a>
            </li>
            <%--<sec:authorize access="isAnonymous()">--%>
            <li class="nav-item">
                <a href="#" class="nav-link" data-toggle="modal" data-target="#signUp">Sign up</a>
            </li>
            <%--</sec:authorize>--%>

            <li class="nav-item">
                <sec:authorize access="isAuthenticated()">
                    <form action="/logoutME" method="post" class="form-inline my-2 my-lg-0">
                        <button type="submit" class="btn btn-outline-success my-2 my-sm-0">EXIT</button>
                            <%--<input type="submit" name="" placeholder="">--%>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </sec:authorize>
            </li>
        </ul>
    </div>
</nav>
<div class="container-fluid carousel-pudding-0">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100"  src="img/c1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/c2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img  class="d-block w-100" src="img/c3.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<%--Registration form--%>
<div class="container-fluid">
    <div class="container">
        <div class="row text-center">
            <div class="col-3">
                <%--<sec:authorize access="isAnonymous()">--%>
                    <h3>Registration form</h3>
                    <form action="/saveUser" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <input type="" name="username" placeholder="username">
                        <input type="" name="password" placeholder="password">
                        <%--<input type="" name="age" placeholder="age">--%>
                        <input type="submit" name="Відправити" placeholder="">
                    </form>
                <%--</sec:authorize>--%>
                <img src="img/Boostrap_logo.png" class="w-100">
                <h2>Information</h2>
                <p>Some information about this...</p>
            </div>
            <div class="col-6"><img src="img/Boostrap_logo.png" class="w-100">
                <h2>Information</h2>
                <p>Some information about this...</p>
            </div>
            <div class="col-3"><img src="img/Boostrap_logo.png" class="w-100">
                <h2>Information</h2>
                <p>Some information about this...</p>
            </div>
        </div>
    </div>
</div>
<%--Modal WINDOW - "Contact"--%>
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
                <p>(093) 62 04 794</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<%--Modal WINDOW: Sign in--%>
<div class="modal fade" id="sigIn" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Your Data</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="sigInUser" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <div class="form-froup">
                            <%--@declare id="exampleinputemail"--%>
                            <label for="exampleInputEmail">Enter your name</label>
                            <input type="" name="username" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="username">
                            <small id="emailHelp" class="form-text text-muted">Please, enter your name</small>
                        </div>
                        <div class="form-froup">
                            <%--@declare id="exampleinputemail"--%>
                            <label for="exampleInputEmail">Enter your password</label>
                            <input type="" name="password" class="form-control" id="exampleInputEmail" placeholder="password">
                            <small id="emailHelp" class="form-text text-muted">Please, enter your password</small>
                        </div>
                        <button type="submit" class="btn btn-primary">
                            Submit
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%--Modal WINDOW: Sign up--%>
<div class="modal fade" id="signUp" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="signUpLabel456454545">Registration form</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="/saveUser" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <div class="form-froup">
                            <%--@declare id="exampleinputemail"--%>
                            <label for="exampleInputEmail">Enter your name</label>
                            <input type="" name="username" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="username">
                            <small id="emailHelp" class="form-text text-muted">Please, enter your name</small>
                        </div>
                        <div class="form-froup">
                            <%--@declare id="exampleinputemail"--%>
                            <label for="exampleInputEmail">Enter your password</label>
                            <input type="" name="password" class="form-control" id="exampleInputEmail" placeholder="password">
                            <small id="emailHelp" class="form-text text-muted">Please, enter your password</small>
                        </div>
                        <button type="submit" class="btn btn-primary">
                            Submit
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<form action="saveAvatar" method="post" enctype="multipart/form-data">
    <input type="file" name="file" placeholder="file">
    <input type="submit">
</form>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>