package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.*;
import controlador.GrabaCurso;

/**
 *
 * @author JuanG
 */
public class GestionAgreModiCurso extends HttpServlet {
    
    GrabaCurso obj=new GrabaCurso();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String opc=request.getParameter("op");
        if(opc.equals("1"))ListarContenido(request, response);
        if(opc.equals("2"))GrabaCursoCompleto(request, response);
    }
    
    protected void ListarContenido(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //en este metodo agregamos el contenido a lista
      String id=request.getParameter("video1");
      contenido_curso cp=new contenido_curso();
      cp.setArchivo(id);
      cp.setLink(id);
      List<contenido_curso> lista;
      //verificar si existe una session llamada canasta
      HttpSession ses=request.getSession();
      if(ses.getAttribute("c_curso")==null)
          lista=new ArrayList();
      else //si existe recuperese de la sesion
          lista=(ArrayList)ses.getAttribute("c_curso");
      //agregar el producto comprado
      lista.add(cp);
      //actualizar la sesion
      ses.setAttribute("c_curso", lista);
      String pag="/GestionCurso.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
      
    }   
    
    protected void GrabaCursoCompleto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses=request.getSession();
         int cdus=Integer.parseInt(request.getParameter("us"));
         String nomc=request.getParameter("nomc");
         Double prec=Double.parseDouble(request.getParameter("prec"));
         String ban=request.getParameter("baner");
         String esp=request.getParameter("cbesp");
         String descripcion=request.getParameter("descri");
         int inscr=100;
         List<contenido_curso> lista=(ArrayList<contenido_curso>)ses.getAttribute("c_curso");
        String fac=obj.grabaCur(nomc, prec, ban, esp, cdus, descripcion, inscr, lista);
        String pag="/GestionCurso.jsp";
        //anular las sesiones
        ses.setAttribute("c_curso", null);
        request.getRequestDispatcher(pag).forward(request, response);
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
