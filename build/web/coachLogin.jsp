<%-- 
    Document   : login
    Created on : 09-06-2021, 3:11:31
    Author     : Fabian Palma
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="Model.Conexion"%>
<%@page import="Dao.DaoUsuario"%>
<%@page import="Model.Usuario"%>
<%@page import="Dao.DaoEvaluacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Model.Evaluacion"%>
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
                                <h1 class="nav-h1">Entrenador</h1>
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
        
                               <% 
                               Usuario user= new Usuario();
                               List<DaoUsuario> datos = new ArrayList();
                               
                               datos = user.consultar();
                               
                               %>
       
        <div class="container login mt-5 rounded shadow-lg">
            <div class="row">
                <div class="col  d-none d-lg-block rounded">
                    <h1 class="container-tittle">Menu</h1>
                    
                    <div class="btn-group-vertical mt-3 mb-3 ">
                        <input type="radio" class="btn-check"  name="btnradio" onclick="mostrar()" id="addmember" value="addmember" autocomplete="off">
                        <label class="btn btn-warning" for="addmember">Registrar evaluación</label>


                    </div>
                    
                    
                    
                </div>
               
                <div class="col  rounded-end px-5 py-5 " id="member" style="display:none" >
                    
                        <form method="POST" action="RegistroEvaluacion">
                        <div class="mb-4">
                            <label for="usuario" class="form-label">Seleccionar usuario</label>
                            
                            <select class="form-control" name="seluser" id="seluser">
                               <%
                               for(DaoUsuario daoUsuario : datos){
                                   
                               %>
                               <option value="<%=daoUsuario.getRut()%>">  <%= daoUsuario.getUsuario()%> </option>
                               <%
                               }
                               %>
                            </select>
                        </div>
                        <div class="mb-4">
                            <label for="peso" class="form-label">Peso</label>
                            <input type="number" class="form-control"  name="peso" id="peso">
                        </div>
                        <div class="mb-4">
                            <label for="estatura" class="form-label">Estatura</label>
                            <input type="number" class="form-control"  name="estatura" id="estatura">
                        </div>
                        <div class="mb-4">
                            <label for="fechaev" class="form-label">Fecha de evaluación</label>
                            <input type="date" class="form-control" name="fechaev" id="fechaev">
                        </div>
                            <div class="mb-4">
                                <button type="button" onclick="calculo()">CALCULAR IMC</button>
                            </div>
                        <div class="mb-4">
                            <label for="imc" class="form-label">IMC</label>
                            <input type="number" class="form-control"  name="imc" id="imc" readonly>
                        </div>
                        <div class="mb-4">
                            <label for="estado" class="form-label">Estado</label>
                            <input type="text" class="form-control" name="estado" id="estado" readonly>
                        </div>


                        <div class="d-grid mb-5">
                            <button type="submit" class="btn btn-primary">Registrar evaluación</button>
                        </div>
                        </form>
                   
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
