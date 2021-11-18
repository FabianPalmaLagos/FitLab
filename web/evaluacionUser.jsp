<%-- 
    Document   : evaluacionUser
    Created on : 11-06-2021, 3:03:03
    Author     : Fabian Palma
--%>

<%@page import="Dao.DaoUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link href="css/navbar.css" rel="stylesheet" type="text/css"/>
        <title>FitLab</title>
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
                
                <div class="col  d-none d-lg-block rounded">
                    <h1 class="container-tittle ">Menu</h1>
                    
                    <div class="btn-group-vertical mt-3 mb-3 ">
                        <input type="radio" class="btn-check" checked name="btnradio" " id="addmember" value="addmember" autocomplete="off">
                        <label class="btn btn-warning"  for="addmember">Evaluaciones</label>

                        <input type="radio" class="btn-check "  name="btnradio"  id="adduser" value="adduser" autocomplete="off">
                        <label class="btn btn-warning" for="adduser">Modificar datos</label>
                    </div>
                     
                    
                            
                </div>
               
                <div class="col  rounded-end px-5 py-5 " id="member" >
                    <form method="POST" action="BusquedaEvaluacion">
                        <% 
                               Usuario user= new Usuario();
                               List<DaoUsuario> datos = new ArrayList();
                               
                               datos = (List<DaoUsuario>)request.getAttribute("datos");
                               
                               for(DaoUsuario daoUsuario : datos){
                               %>
                        <div class="mb-4">
                            <label for="desde" class="form-label">Fecha inicio</label>
                            <input type="date" class="form-control" name="desde" id="desde">
                        </div>
                        
                        <div class="mb-4">
                            <label for="hasta" class="form-label">Fecha final</label>
                            <input type="date" class="form-control" name="hasta" id="hasta">
                        </div>
                        <div style="display:none;"><input type="text" class="form-control" style="width: 280px" name="rut" id="rut" value="<%=daoUsuario.getRut()%>" readonly></div>

                        <div class="d-grid mb-5">
                            <button type="submit" class="btn btn-primary">Buscar evaluaciones</button>
                        </div>
                        <%
                               }%>
                    </form>
                </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
crossorigin="anonymous"></script>
</html>
