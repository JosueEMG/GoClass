/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import controlador.CursoController;
import controlador.EspecialidadController;
import controlador.InscripcionController;
import controlador.UsuarioController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Josue Emmanuel Medina Garcia
 */
public class GestionMisCursos extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        if (request.getParameter("funcion").equals("listarMisCursos")) {
            listarMisCursos(request, response);
        }
        if (request.getParameter("funcion").equals("lisGestionCurso")) {
            lisGestionCurso(request, response);
        }
        if (request.getParameter("funcion").equals("listarEspecialidad")) {
            listarEspecialidad(request, response);
        }
        if (request.getParameter("funcion").equals("listarNombres")) {
            listarNombres(request, response);
        }
        if (request.getParameter("funcion").equals("listarInscripciones")) {
            listarInscripciones(request, response);
        }
    }
    
    protected void listarMisCursos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("idUsuario"));
        PrintWriter out = response.getWriter();
        InscripcionController inscripcionController = new InscripcionController();
        Gson gson = new Gson();
        out.print(gson.toJson(inscripcionController.listaInscripciones(id)));
    }
    
    protected void listarEspecialidad(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        EspecialidadController e = new EspecialidadController();
        Gson gson = new Gson();
        out.print(gson.toJson(e.lisEspe())); // response
    }
    
    protected void lisGestionCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int idprofe = Integer.parseInt(request.getParameter("idProfesor"));
        PrintWriter out = response.getWriter();
        CursoController cc = new CursoController();
        Gson gson = new Gson();
        out.print(gson.toJson(cc.lisGestionCurso(idprofe)));
    }
    
    protected void listarNombres(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        CursoController cc = new CursoController();
        Gson gson = new Gson();
        out.print(gson.toJson(cc.getArrayOfNames(cc.graficarCurso())));
    }
    
    protected void listarInscripciones(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        CursoController cc = new CursoController();
        Gson gson = new Gson();
        out.print(gson.toJson(cc.getArrayOfInscriptionsNumbers(cc.graficarCurso())));
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
