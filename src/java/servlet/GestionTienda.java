/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import controlador.FacturaController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controlador.CursoController;
import javax.servlet.http.HttpSession;
import modelo.factura;

/**
 *
 * @author Josue Emmanuel Medina Garcia
 */
public class GestionTienda extends HttpServlet {

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
        if (request.getParameter("funcion").equals("listarCursos")) {
            listarCursos(request, response);
        }
        if (request.getParameter("funcion").equals("anadirFactura")) {
            anadirFactura(request, response);
        }
        if (request.getParameter("funcion").equals("listarFacturas")) {
            listarFacturas(request, response);
        }
        if (request.getParameter("funcion").equals("listarCursosRecomanedados")) {
            listarCursosRecomendados(request, response);
        }
    }

    protected void listarCursos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        CursoController cursoController = new CursoController();
        Gson gson = new Gson();
        out.print(gson.toJson(cursoController.listarCurso()));
    }

    protected void anadirFactura(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        String metodoPago = request.getParameter("metodoPago");

        FacturaController facturaController = new FacturaController();
        try {
            if (facturaController.verificacionInscripcion(idCurso, idUsuario)) {
                out.print("yacomprado");
            } else {
                if (facturaController.createFactura(idUsuario, idCurso, metodoPago) != 0) {
                    out.print("comprado");
                } else {
                    out.print("nocomprado");
                }
            }

        } catch (Exception e) {
            out.print("error");
        }
    }

    protected void listarFacturas(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession ses = request.getSession();
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        String consulta = request.getParameter("consulta");
        FacturaController facturaController = new FacturaController();
        Gson gson = new Gson();
        int tipo = (int) ses.getAttribute("tipo");
        if (tipo == 1) {
            out.print(gson.toJson(facturaController.listaFacturas(consulta)));
        }
        if (tipo == 3) {
            out.print(gson.toJson(facturaController.listaFacturas(idUsuario, consulta)));
        }
    }
    
    protected void listarCursosRecomendados(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        CursoController cursoController = new CursoController();
        Gson gson = new Gson();
        out.print(gson.toJson(cursoController.graficarCurso()));
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
