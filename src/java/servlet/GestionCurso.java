/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import controlador.ContenidoCursoController;
import controlador.CursoController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.contenido_curso;
import modelo.curso;

/**
 *
 * @author Josue Emmanuel Medina Garcia
 */
public class GestionCurso extends HttpServlet {

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
        if(request.getParameter("funcion").equals("ver")) {
            verContenido(request, response);
        }
        if(request.getParameter("funcion").equals("idCurso")) {
            idCurso(request, response);
        }
        if(request.getParameter("funcion").equals("obtenerCurso")) {
            obtenerCurso(request, response);
        }
        if(request.getParameter("funcion").equals("obtenerContenido")) {
            obtenerContenido(request, response);
        }
        if(request.getParameter("funcion").equals("anadirCurso")) {
            anadirCurso(request, response);
        }
        if(request.getParameter("funcion").equals("eliminarCurso")) {
            eliminarCurso(request, response);
        }
        if(request.getParameter("funcion").equals("modificarCurso")) {
            modificarCurso(request, response);
        }
        if(request.getParameter("funcion").equals("obtener")) {
            obtenerIdCurso(request, response);
        }
    }
    protected void verContenido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession ses = request.getSession();
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        String nombreCurso = request.getParameter("nombreCurso");
        ses.setAttribute("idCurso", idCurso);
        ses.setAttribute("nombreCurso", nombreCurso);
    }
    
    protected void idCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession ses = request.getSession();
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        ses.setAttribute("idCurso", idCurso);
    }
    
    protected void obtenerCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        CursoController c = new CursoController();
        curso cur = c.getCurso(idCurso);
        Gson gson = new Gson();
        out.print(gson.toJson(cur));
    }
    protected void obtenerContenido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        ContenidoCursoController c = new ContenidoCursoController();
        Gson gson = new Gson();
        out.print(gson.toJson(c.listarContenidoCurso(idCurso)));
    }
    
    protected void anadirCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession ses = request.getSession();
        String nombreCurso = request.getParameter("nombreCurso");
        double precioCurso = Double.parseDouble(request.getParameter("precioCurso"));
        int idUsuario = (int)ses.getAttribute("idUsuario");
        int especialidadCurso = Integer.parseInt(request.getParameter("especialidadCurso"));
        String descripcionCurso = request.getParameter("descripcionCurso");
        curso c = new curso();
        c.setNombre(nombreCurso);
        c.setPrecio(precioCurso);
        c.setId_especialidad(especialidadCurso);
        c.setDetalle(descripcionCurso);
        c.setId_usuario(idUsuario);
        String video1 = request.getParameter("video1");
        String video2 = request.getParameter("video2");
        String video3 = request.getParameter("video3");
        String video4 = request.getParameter("video4");
        String video5 = request.getParameter("video5");
        CursoController cursoController = new CursoController();
        try {
            if (cursoController.AdicionCurso(c, video1, video2, video3, video4, video5) != 0) {
               out.print("anadido"); 
            }
            else {
               out.print("noanadido"); 
            }
        } catch (Exception e) {
            out.print("noanadido");
        }
        
    }
    
    protected void modificarCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession ses = request.getSession();
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        String nombreCurso = request.getParameter("nombreCurso");
        double precioCurso = Double.parseDouble(request.getParameter("precioCurso"));
        int idUsuario = (int)ses.getAttribute("idUsuario");
        int especialidadCurso = Integer.parseInt(request.getParameter("especialidadCurso"));
        String descripcionCurso = request.getParameter("descripcionCurso");
        curso c = new curso();
        
        c.setId_curso(idCurso);
        c.setId_usuario(idUsuario);
        c.setNombre(nombreCurso);
        c.setPrecio(precioCurso);
        c.setId_especialidad(especialidadCurso);
        c.setDetalle(descripcionCurso);
        
        String video1 = request.getParameter("video1");
        String video2 = request.getParameter("video2");
        String video3 = request.getParameter("video3");
        String video4 = request.getParameter("video4");
        String video5 = request.getParameter("video5");
        ContenidoCursoController contenidoCursoController = new ContenidoCursoController();
        List<contenido_curso> lista = contenidoCursoController.listarIdContenidoCurso(idCurso);
        int id_contenido1 = lista.get(0).getId_contenido();
        int id_contenido2 = lista.get(1).getId_contenido();
        int id_contenido3 = lista.get(2).getId_contenido();
        int id_contenido4 = lista.get(3).getId_contenido();
        int id_contenido5 = lista.get(4).getId_contenido();

        CursoController cursoController = new CursoController();
        if (cursoController.modificarCurso(c, video1, video2, video3, video4, video5, id_contenido1, id_contenido2, id_contenido3, id_contenido4, id_contenido5) != 0) {
            out.print("modificado");
        }
        else {
            out.print("nomodificado");
        }
        
    }
    
    protected void eliminarCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        CursoController c = new CursoController();
        try {
            c.eliminarCurso(idCurso);
            out.print("eliminado");
        } catch (Exception e) {
            out.print("noeliminado");
        }
        
        
    }
    protected void obtenerIdCurso(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int idCurso = Integer.parseInt(request.getParameter("idCurso"));
        HttpSession ses=request.getSession();
        ses.setAttribute("idCurso", idCurso);
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
