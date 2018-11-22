<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gallery</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../img/**">
    <link rel="stylesheet" href="../js/main.js">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <a class="navbar-brand" href="brandLogo">
        <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Boostrap_logo.svg/144px-Boostrap_logo.svg.png" width="30" height="30" alt="logo">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <sec:authorize access="isAuthenticated()">
            <li class="nav-item active">
                <a href="home" class="nav-link">Home</a>
            </li>
            </sec:authorize>
            <li class="nav-item" >
                <a href="gallery" class="nav-link">Gallery</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link" data-toggle="modal" data-target="#exampleModal">Contact</a>
            </li>
            <sec:authorize access="isAnonymous()">
                <li class="nav-item">
                    <a href="#" class="nav-link" data-toggle="modal" data-target="#signUp">Sign in</a>
                </li>
            </sec:authorize>
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
<%--Modal WINDOW--%>
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
                <h5 class="modal-title" id="signUpLabel">Your Data</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <form action="su" method="post" enctype="multipart/form-data">
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
<div><h1 style="text-align: center">Gallery</h1></div>

<!-- Page Content -->
<div class="container page-top">
    <div class="row">
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://images.pexels.com/photos/62307/air-bubbles-diving-underwater-blow-62307.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="fancybox" rel="ligthbox">
                <img  src="https://images.pexels.com/photos/62307/air-bubbles-diving-underwater-blow-62307.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid "  alt="">
            </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://uniquefacts.net/wp-content/uploads/2015/09/Technology.jpeg"  class="fancybox" rel="ligthbox">
                <img  src="https://uniquefacts.net/wp-content/uploads/2015/09/Technology.jpeg" class="zoom img-fluid"  alt="">
            </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://images.pexels.com/photos/158827/field-corn-air-frisch-158827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                <img  src="https://images.pexels.com/photos/158827/field-corn-air-frisch-158827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
            </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://images.pexels.com/photos/302804/pexels-photo-302804.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                <img  src="https://images.pexels.com/photos/302804/pexels-photo-302804.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
            </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://images.pexels.com/photos/1038914/pexels-photo-1038914.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="fancybox" rel="ligthbox">
                <img  src="https://images.pexels.com/photos/1038914/pexels-photo-1038914.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid "  alt="">
            </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="fancybox" rel="ligthbox">
                <img  src="https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid "  alt="">
            </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://images.pexels.com/photos/801893/pexels-photo-801893.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                <img  src="https://images.pexels.com/photos/801893/pexels-photo-801893.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
            </a>
        </div>
        <div class="col-lg-3 col-md-4 col-xs-6 thumb">
            <a href="https://images.pexels.com/photos/1038002/pexels-photo-1038002.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                <img  src="https://images.pexels.com/photos/1038002/pexels-photo-1038002.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
            </a>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
