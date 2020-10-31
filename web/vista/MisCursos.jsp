<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    
    if (ses.getAttribute("tipo") != null) {
        if ((int)ses.getAttribute("tipo") == 3) {
%>
<title>UnitClass | Mis Cursos</title>
<input type="hidden" id="idUsuario" value="<%=ses.getAttribute("idUsuario")%>">
<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Mis Cursos </h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="Tienda.jsp" >Tienda</a></li>
                        <li class="breadcrumb-item active">Mis cursos</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>   
    <section class="content">
        <div class="container-fluid">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Listado de Cursos</h3>
                </div>
                <div class="card-body">
                    <div id="cursos" class="row d-flex aling-items-stretch">
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file = "layouts/Footer.jsp"%>
<%
        } else {
            response.sendRedirect("Tienda.jsp");
        }
    } else {
        response.sendRedirect("index.jsp");
    }
%>
<script src="../js/MisCursos.js" type="text/javascript"></script>
