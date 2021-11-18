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
        <link href="css/perfil.css" rel="stylesheet" type="text/css"/>
        <link href="css/navbar.css" rel="stylesheet" type="text/css"/>
        <script src="js/js.js" type="text/javascript"></script>
        
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
                                <h1 class="nav-h1">PERFIL MIEMBRO</h1>
                            </ul>
                            <form class="d-flex">

                                <a href="index.html">Cerrar sesión</a>
                            </form>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!--Navbar ends-->
        <div class="container mx-auto login mt-5 rounded shadow-lg">
            
            <div class="row">
                
                <div class=" ">

                    <h2 class="fw-bold text-center pt-5 mb-5" style="">${ resp } <br>
                    
                    </h2>

                           
                </div> 
                               
            </div>
                
            
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

