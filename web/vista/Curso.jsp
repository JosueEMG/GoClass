<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    
    if (ses.getAttribute("tipo") != null) {
        String nombreCurso = (String)ses.getAttribute("nombreCurso");
        int idCurso = (int)ses.getAttribute("idCurso");
%>
<title>UnitClass | Cursos</title>
<input type="hidden" id="idCurso" value="<%=idCurso%>">
<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1><%=nombreCurso%></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <%
                            if ((int)ses.getAttribute("tipo") == 3) {
                        %>
                        <li class="breadcrumb-item"><a href="MisCursos.jsp">Mis cursos</a></li>
                        <%  }
                            else {
                        %>
                        <li class="breadcrumb-item"><a href="GestionCursos.jsp">Gestion cursos</a></li>
                        <%
                            }
                        %>
                        <li class="breadcrumb-item active"><%=nombreCurso%></li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <!-- CAPITULO 1 -->
    <section class="content">
        <!-- Default box -->
        <div class="container-fluid">
            <div id="contenido">
            
            </div>
        </div>
    </section>
</div>
<%@include file = "layouts/Footer.jsp"%>

<%
    } else {
        response.sendRedirect("https://unitclass.azurewebsites.net/vista/index.jsp");
    }
%>
<script src="../js/Curso.js" type="text/javascript"></script>