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
                
                <div class="col  d-none d-lg-block rounded">
                    <h1 class="container-tittle ">Menu</h1>
                    
                    <div class="btn-group-vertical mt-3 mb-3 ">
                        <input type="radio" class="btn-check"  name="btnradio" onclick="mostrar()" id="addmember" value="addmember" autocomplete="off">
                        <label class="btn btn-warning"  for="addmember">Evaluaciones</label>

                        <input type="radio" class="btn-check "  name="btnradio" onclick="mostrar()" id="adduser" value="adduser" autocomplete="off">
                        <label class="btn btn-warning" for="adduser">Modificar datos</label>
                    </div>
                    <h3 class="hs">Información Usuario</h3>
                    <div class="mb-2">
                            <label for="userinf" class="form-label">Rut</label>
                            <input type="text" class="form-control" style="width: 280px" name="userinf" id="userinf" value="${ resp }" readonly>
                    </div>
                    <div class="mb-4">
                            <label for="correoinf" class="form-label">Usuario</label>
                            <input type="text" class="form-control" style="width: 280px" name="correoinf" id="correoinf" value="fpalma@gmail.com" readonly>
                    </div>
                </div>
               
                <div class="col  rounded-end px-5 py-5 " id="member" style="display:none" >
                    <form action="userTables.jsp">
                        
                        <div class="mb-4">
                            <label for="desde" class="form-label">Fecha inicio</label>
                            <input type="date" class="form-control" name="desde" id="desde">
                        </div>
                        
                        <div class="mb-4">
                            <label for="hasta" class="form-label">Fecha final</label>
                            <input type="date" class="form-control" name="hasta" id="hasta">
                        </div>


                        <div class="d-grid mb-5">
                            <button type="submit" class="btn btn-primary">Buscar evaluaciones</button>
                        </div>
                    </form>
                </div>
                <div class="col  rounded-end px-5 py-5 " id="user" style="display:none" >
                    <form action="">
                        <div class="mb-4">
                            <label for="rut" class="form-label">RUT/DNI</label>
                            <input type="text" class="form-control" name="rut" id="rut" readonly>
                        </div>
                        <div class="mb-4">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" name="nombre" id="nombre" readonly>
                        </div>
                        <div class="mb-4">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" name="apellido" id="apellido" readonly>
                        </div>
                        <div class="mb-4">
                            <label for="direccion" class="form-label">Dirección</label>
                            <input type="text" class="form-control" name="direccion" id="direccion">
                        </div>
                        <div class="mb-4">
                            <label for="telefono" class="form-label">Telefono</label>
                            <input type="number" class="form-control" name="telefono" id="telefono">
                        </div>
                        <div class="mb-4">
                            <label for="correo" class="form-label">Correo electrónico</label>
                            <input type="email" class="form-control" name="correo" id="correo">
                        </div>
                        <div class="d-grid mb-5">
                            <button type="submit" class="btn btn-primary">Modificar datos</button>
                        </div>
                    </form>
                </div>
                
            </div>
            <div class="row ms-1 me-1" id="tabev" style="display:none">
                <table class="table table-dark table-hover">
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
                      <tr>
                        <td>20-06-2021</td>
                        <td>75</td>
                        <td>180</td>
                        <td>123</td>
                        <td>Normal</td>
                      </tr>
                      <tr>
                        <td>20-07-2021</td>
                        <td>78</td>
                        <td>180</td>
                        <td>123</td>
                        <td>Normal</td>
                      </tr>
                      <tr>
                        <td>20-08-2021</td>
                        <td>73</td>
                        <td>180</td>
                        <td>123</td>
                        <td>Normal</td>
                      </tr>
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
