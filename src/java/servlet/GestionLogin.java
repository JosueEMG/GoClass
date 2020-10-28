/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controlador.UsuarioController;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import modelo.usuario;
/**
 *
 * @author Josue Emmanuel Medina Garcia
 */
public class GestionLogin extends HttpServlet {

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
        if (request.getParameter("opc").equals("1")) {
            login(request, response);
        }
        if (request.getParameter("opc").equals("2")) {
            cerrarSesion(request, response);
        }
        if (request.getParameter("opc").equals("3")) {
            checkUser(request, response);
        }
        if (request.getParameter("opc").equals("4")) {
            register(request, response);
        }
    }
    
    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();
        String dni =  request.getParameter("dni");
        String pass = request.getParameter("contrasena");
        UsuarioController uc = new UsuarioController();
        usuario u = null;
        String pagina = "";
      
    
        if (ses.getAttribute("tipo") != null) {
            pagina = "https://unitclass.azurewebsites.net/vista/Tienda.jsp";
        }
        else { 
            if (dni.equals("") || pass.equals("")){
                pagina = "https://unitclass.azurewebsites.net/vista/Tienda.jsp";
            }
            else if (uc.userVerify(dni, pass)) {
                u = uc.getUser(dni);
                ses.setAttribute("idUsuario", u.getId_usuario());
                ses.setAttribute("nombre", u.getNombre_us());
                ses.setAttribute("dni", u.getDni_us());
                ses.setAttribute("tipo", u.getId_tipo_us());
                ses.setAttribute("avatar", u.getAvatar());
                pagina = "https://unitclass.azurewebsites.net/vista/Tienda.jsp";
                
            }
            else {
                pagina = "https://unitclass.azurewebsites.net/vista/Tienda.jsp";
            }
        }
        response.sendRedirect(pagina);   
    }

    protected void cerrarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession ses = request.getSession();
        ses.invalidate();
        response.sendRedirect("https://unitclass.azurewebsites.net/vista/index.jsp");
    }
    
    protected void checkUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        UsuarioController uc = new UsuarioController();
        usuario u = uc.getUser(request.getParameter("dni"));
        
        if (u != null) {
            out.print("existe");
        }
        else {
            out.print("noexiste");
        }
    }
    protected void register(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        UsuarioController uc = new UsuarioController();
        usuario u = new usuario();
        u.setNombre_us(request.getParameter("nombre"));
        u.setApellidos_us(request.getParameter("apellido"));
        u.setFecha_nacimiento(request.getParameter("fecha"));
        u.setDni_us(request.getParameter("dni"));
        u.setContrasena_us(request.getParameter("contrasena"));
        u.setCorreo_us(request.getParameter("correo"));
        u.setSexo_us(request.getParameter("sexo"));
        u.setAvatar("default.png");
        u.setId_tipo_us(3);
        uc.createUser(u);
        
            
        
        
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
