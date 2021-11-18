/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.DaoEvaluacion;
import Dao.DaoMiembro;
import Dao.DaoUsuario;
import Model.Evaluacion;
import Model.Miembro;
import Model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class userMenu extends HttpServlet {

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
        String rut, btn="";
        RequestDispatcher requestDispatcher = null;
        btn = request.getParameter("btn");
        if(btn.equals("evaluaciones")){
            DaoUsuario daoUsuario = new DaoUsuario();
            Usuario user = new Usuario();
            rut = request.getParameter("rut");
            daoUsuario.setRut(rut);
            List<DaoUsuario> datos = new ArrayList<>();
            datos = user.buscarrut(daoUsuario);
            request.setAttribute("datos", datos);
            requestDispatcher = request.getRequestDispatcher("evaluacionUser.jsp");
            requestDispatcher.forward(request, response);
        }else{
            DaoMiembro daoMiembro = new DaoMiembro();
            Miembro miembro = new Miembro();
            rut = request.getParameter("rut");
            daoMiembro.setRut(rut);
            List<DaoMiembro> datos = new ArrayList();
            datos = miembro.buscar(daoMiembro);
            request.setAttribute("datos", datos);
            requestDispatcher = request.getRequestDispatcher("actualizarUser.jsp");
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
