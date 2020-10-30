/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.gson.Gson;
import controlador.UsuarioController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lenovo
 */
public class GestionUsuario extends HttpServlet {

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
            if(request.getParameter("funcion").equals("listadoUsuarios")){
                listaUsuario(request, response);
            }
            if(request.getParameter("funcion").equals("ascender")){
                ascender(request, response);
            }
            if(request.getParameter("funcion").equals("descender")){
                descender(request, response);
            }
            if(request.getParameter("funcion").equals("borrarUsuario")){
                borrarUsuario(request, response);
            }
    }
    
    protected void listaUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession ses = request.getSession();
        int tipo = (int) ses.getAttribute("tipo");
        String consulta = request.getParameter("consulta");
        if(tipo==1){                     
            UsuarioController uc = new UsuarioController();
            Gson g = new Gson();
            if(consulta == null){
                out.print(g.toJson(uc.listaUsuarios(consulta)));
            }else{
                out.print(g.toJson(uc.listaUsuarios(consulta)));
            }
        }
        if(tipo==2){
            int id = (int) ses.getAttribute("idCurso");
            UsuarioController uc = new UsuarioController();
            Gson g = new Gson();           
            if(consulta == null){
                out.print(g.toJson(uc.listaUsuariosxCurso(id, consulta, tipo)));
            }else{
                out.print(g.toJson(uc.listaUsuariosxCurso(id, consulta, tipo)));
            }        
        }
        if(tipo==3){
            int id = (int) ses.getAttribute("idCurso");
            UsuarioController uc = new UsuarioController();
            Gson g = new Gson();
            if(consulta == null){
                out.print(g.toJson(uc.listaUsuariosxCurso(id, consulta, tipo)));
            }else{
                out.print(g.toJson(uc.listaUsuariosxCurso(id, consulta, tipo)));
            }
        }
    }
        
    protected void ascender(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        UsuarioController uc = new UsuarioController();
        uc.updateUsuario(idUsuario);
    }
    
    protected void descender(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        UsuarioController uc = new UsuarioController();
        uc.downgradeUsuario(idUsuario);
    }
    
    protected void borrarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        UsuarioController uc = new UsuarioController();
        uc.deleteUser(idUsuario);
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
