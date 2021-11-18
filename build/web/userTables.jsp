<%-- 
    Document   : login
    Created on : 09-06-2021, 3:11:31
    Author     : Fabian Palma
--%>

<%@page import="Dao.DaoEvaluacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Evaluacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
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
                        </div>
                        <form class="d-flex">

                                <a href="index.html">Cerrar sesión</a>
                            </form>
                    </div>
                </nav>
            </div>
        </div>
        <!--Navbar ends-->
        
                              <% Evaluacion evaluacion= new Evaluacion();
                               List<DaoEvaluacion> datos = new ArrayList();
                               
                               datos = (List<DaoEvaluacion>) request.getAttribute("datos");%>
        <div class="container login mt-5 rounded shadow-lg">
            
            <div class="row ms-1 me-1 " id="tabev">
                <h1 class="container-tittle text-center">Evaluaciones</h1>
               
                <table class="table table-dark table-hover mt-3">
                    <thead>
                      <tr>
                        <th scope="col">Fecha</th>
                        <th scope="col">Peso(kg)</th>
                        <th scope="col">Estatura(cm)</th>
                        <th scope="col">IMC</th>
                        <th scope="col">Estado</th>
                      </tr>
                    </thead>
                    <tbody>
                       <% 
                              
                               
                               for(DaoEvaluacion daoEvaluacion: datos){
                               %>
                      <tr>
                        <td><%= daoEvaluacion.getFechaev()%></td>
                        <td><%= daoEvaluacion.getPeso()%></td>
                        <td><%= daoEvaluacion.getEstatura()%></td>
                        <td><%= daoEvaluacion.getImc()%></td>
                        <td><%= daoEvaluacion.getEstado()%></td>
                      </tr>
                      <%
                               }
                      %>
                    </tbody>
            </table>
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

