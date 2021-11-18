<%-- 
    Document   : login
    Created on : 09-06-2021, 3:11:31
    Author     : Fabian Palma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link href="css/navbar.css" rel="stylesheet" type="text/css"/>
        <style>
            .bg{
                background-image: url(imagenes/login.jpg);
                background-position: center center;
                background-size: 800px 617px;

            }
        </style>
        <title>Fitlab</title>
    </head>
    <body>
        <!-- Navbar begins-->
   <div class="header-background">
        <div id="nav" class="sticky-nav">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a href="index.html"><img src="imagenes/logo.png"  alt=""></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        <span></span>
                        <span></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-auto">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="index.html">Inicio</a>
                            </li>
                        </ul>
                        <form class="d-flex">

                            <a href="login.jsp" class="btn btn-dark me-1" role="button">Login</a>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
<!--Navbar ends-->
    <div class="container login mt-5 rounded shadow-lg">
        <div class="row">
            <div class="col  bg d-none d-lg-block rounded">

            </div>
            <div class="col  rounded-end px-5">
                <div class="fw-bold text-center py-3">
                    <img src="imagenes/logo.png"  alt="">
                </div>
                <div class="fw-bold text-center py-3">
                    Bienvenido/a
                </div>
                <!-- LOGIN -->
                <form method="POST" action="Login">
                    <div class="mb-4">
                        <label for="selrol" class="form-label">Tipo de sesión</label>
                        <select class="form-control" required name="selrol" id="selrol">
                                <option value="">Seleccione Sesión</option>
                                <option value="3">Admin</option>
                                <option value="1">Usuario</option>
                                <option value="2">Entrenador</option>
                        </select>
                    </div>
                    <div class="mb-4">
                        <label for="usuario" class="form-label">Usuario</label>
                        <input type="text" class="form-control" name="usuario" id="usuario">
                    </div>
                    <div class="mb-4">
                        <label for="contrasena" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" name="contrasena" id="contrasena">
                    </div>
                    <div class="mb-4">
                        <input type="checkbox" name="recordar" class="form-check-input" id="chk-recordar">
                        <label for="recordar" class="form-check-label">Recordar contraseña</label>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                    </div>

                    <div class="my-3">
                        <span>¿Olvidaste tu contraseña? Recuperala <a href="">aquí</a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
    integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
    crossorigin="anonymous"></script>
</html>
