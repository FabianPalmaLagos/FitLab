<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Dao.DaoMiembro"%>
<%@page import="Model.Miembro"%>
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
        <div class="container mx-auto login mt-5 rounded shadow-lg">
            
            <div class="row">
                
                <div class="col  d-none d-lg-block rounded">
                    <h1 class="container-tittle ">Menu</h1>
                    
                    <div class="btn-group-vertical mt-3 mb-3 ">
                        <input type="radio" class="btn-check"  name="btnradio" onclick="mostrar()" id="addmember" value="addmember" autocomplete="off">
                        <label class="btn btn-warning"  for="addmember">Evaluaciones</label>

                        <input type="radio" class="btn-check " checked  name="btnradio" onclick="mostrar()" id="adduser" value="adduser" autocomplete="off">
                        <label class="btn btn-warning" for="adduser">Modificar datos</label>
                    </div>
                    
                </div>
               
               
                <div class="col  rounded-end px-5 py-5 " id="user" >
                    <form method="POST" action="userUpdate">
                        <%
                            Miembro miembro = new Miembro();
                            List<DaoMiembro> datos = new ArrayList();
                            datos = (List<DaoMiembro>)request.getAttribute("datos");
                            for(DaoMiembro daoMiembro : datos){
                        %>
                        <div class="mb-4">
                            <label for="rut" class="form-label">RUT/DNI</label>
                            <input type="text" class="form-control" name="rut" id="rut" value="<%= daoMiembro.getRut() %>" readonly>
                        </div>
                        <div class="mb-4">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" name="nombre" id="nombre" value="<%= daoMiembro.getNombre() %>" readonly>
                        </div>
                        <div class="mb-4">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" name="apellido" id="apellido" value="<%= daoMiembro.getApellido() %>" readonly>
                        </div>
                        <div class="mb-4">
                            <label for="direccion" class="form-label">Dirección</label>
                            <input type="text" class="form-control" name="direccion" id="direccion" value="<%= daoMiembro.getDireccion() %>">
                        </div>
                        <div class="mb-4">
                            <label for="telefono" class="form-label">Telefono</label>
                            <input type="number" class="form-control" name="telefono" id="telefono" value="<%= daoMiembro.getTelefono() %>">
                        </div>
                        <div class="mb-4">
                            <label for="correo" class="form-label">Correo electrónico</label>
                            <input type="email" class="form-control" name="correo" id="correo" value="<%= daoMiembro.getCorreo() %>">
                        </div>
                        <div class="d-grid mb-5">
                            <button type="submit" class="btn btn-primary">Modificar datos</button>
                        </div>
                        <%
                            }
                        %>
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

