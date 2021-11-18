/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.DaoUsuario;
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
public class Login2 extends HttpServlet {

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
        String usuario,contrasena,rol,resp;
        
        DaoUsuario daoUsuario = new DaoUsuario();
        Usuario user = new Usuario();
        RequestDispatcher requestDispatcher = null;
        usuario = request.getParameter("usuario");
        contrasena = request.getParameter("contrasena");
        rol = request.getParameter("selrol");
        daoUsuario.setUsuario(usuario);
        daoUsuario.setContrasena(contrasena);
        daoUsuario.setRol(rol);
        List<DaoUsuario> datos = user.login(daoUsuario);
        if(datos == null || datos.isEmpty()){
            resp = "Usuario o contraseña incorrectos.";
            request.setAttribute("resp", resp);
            requestDispatcher = request.getRequestDispatcher("vistaError.jsp");
            requestDispatcher.forward(request, response);
        }else{
            switch (rol) {
                case "1":
                    resp = "Ingresado como usuario";
                    request.setAttribute("resp", resp);
                    requestDispatcher = request.getRequestDispatcher("vistaError.jsp");
                    requestDispatcher.forward(request, response);
                    break;
                case "2":
                    resp = "Ingresado como entrenador";
                    request.setAttribute("resp", resp);
                    requestDispatcher = request.getRequestDispatcher("vistaError.jsp");
                    requestDispatcher.forward(request, response);
                    break;
                case "3":
                    resp = "Ingresado como admin";
                    request.setAttribute("resp", resp);
                    requestDispatcher = request.getRequestDispatcher("vistaError.jsp");
                    requestDispatcher.forward(request, response);
                    break;
            }
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
