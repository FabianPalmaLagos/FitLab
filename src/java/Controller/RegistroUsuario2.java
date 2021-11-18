/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.DaoMiembro;
import Dao.DaoUsuario;
import Model.Miembro;
import Model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fabian Palma
 */
public class RegistroUsuario2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String resp, rut, usuario, contrasena, rol, iduser;
        int  idusuario;
        
                DaoUsuario daoUsuario = new DaoUsuario();
                DaoMiembro daoMiembro = new DaoMiembro();
                Miembro miembro = new Miembro();
                Usuario user = new Usuario();
                RequestDispatcher requestDispatcher = null;
                idusuario = Integer.parseInt(request.getParameter("idusuario"));
                usuario = request.getParameter("usuario");
                contrasena = request.getParameter("contrasena");
                rol = request.getParameter("selrol");
                rut = request.getParameter("rut");
                daoUsuario.setRut(rut);
                daoUsuario.setUsuario(usuario);
                daoUsuario.setContrasena(contrasena);
                daoUsuario.setRol(rol);
                daoMiembro.setRut(rut);
                List<DaoUsuario> datos = user.buscarid(idusuario);
                List<DaoUsuario> datos2 = user.buscarrut(daoUsuario);
                List<DaoMiembro> datos3 = miembro.buscar(daoMiembro);
                
                if(datos == null | datos.isEmpty()){
                    
                    
                    if(datos2 == null | datos2.isEmpty()){
                        
                        if(datos3 == null | datos3.isEmpty()){
                            resp = "El rut ingresado no pertenece a ningún miembro registrado";
                            request.setAttribute("resp", resp);
                            requestDispatcher = request.getRequestDispatcher("vistaExitoAdmin.jsp");
                            requestDispatcher.forward(request, response);
                        }else{
                            daoUsuario.setIdusuario(idusuario);
                            daoUsuario.setUsuario(usuario);
                            daoUsuario.setContrasena(contrasena);
                            daoUsuario.setRol(rol);
                            daoUsuario.setRut(rut);

                            resp = user.insertar(daoUsuario);

                            request.setAttribute("resp", resp);
                            requestDispatcher = request.getRequestDispatcher("vistaExitoAdmin.jsp");
                            requestDispatcher.forward(request, response);
                        }
                    }else{
                        resp = "El rut ya se encuentra en uso por otro usuario";
                        request.setAttribute("resp", resp);
                        requestDispatcher = request.getRequestDispatcher("vistaExitoAdmin.jsp");
                        requestDispatcher.forward(request, response);
                        
                        
                    }
                }else {
                    resp = "El id del usuario ya se encuentra ingresado en la base de datos";
                    request.setAttribute("resp", resp);
                    requestDispatcher = request.getRequestDispatcher("vistaExitoAdmin.jsp");
                    requestDispatcher.forward(request, response);
                }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
