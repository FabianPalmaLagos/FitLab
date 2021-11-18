<%-- 
    Document   : vistaBusqueda
    Created on : 09-06-2021, 23:47:44
    Author     : Fabian Palma
--%>

<%@page import="Dao.DaoMiembro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/perfil.css" rel="stylesheet" type="text/css"/>
<link href="css/navbar.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado de busqueda</h1>
        
        <%
        List<DaoMiembro> datos = new ArrayList();
        
        datos = (List<DaoMiembro>) request.getAttribute("datos");
        
        for(DaoMiembro daoMiembro: datos){
        %>
        
        <label for="rut" class="form-label">Rut</label>
        <input type="text" class="form-control" style="width: 280px" name="rut" id="rut" value="<%= daoMiembro.getRut() %>" readonly>
        <label for="nombre" class="form-label">Nombre</label>
        <input type="text" class="form-control" style="width: 280px" name="nombre" id="nombre" value="<%= daoMiembro.getNombre()%>" readonly>
        <label for="apellido" class="form-label">Apellido</label>
        <input type="text" class="form-control" style="width: 280px" name="apellido" id="apellido" value="<%= daoMiembro.getApellido()%>" readonly>
        <label for="direccion" class="form-label">Dirección</label>
        <input type="text" class="form-control" style="width: 280px" name="direccion" id="direccion" value="<%= daoMiembro.getDireccion()%>" readonly>
        <label for="telefono" class="form-label">Teléfono</label>
        <input type="text" class="form-control" style="width: 280px" name="telefono" id="telefono" value="<%= daoMiembro.getTelefono() %>" readonly>
        <label for="correo" class="form-label">Correo</label>
        <input type="text" class="form-control" style="width: 280px" name="correo" id="correo" value="<%= daoMiembro.getCorreo()%>" readonly>
        <%
        }
        %>
    </body>
</html>
