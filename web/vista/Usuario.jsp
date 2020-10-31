<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    
    if (ses.getAttribute("tipo") != null) {
%>
<input type="hidden" value="<%=(int)ses.getAttribute("tipo")%>" id="valor">
        <title>UnitClass | Usuarios</title>
            <!--Este es el contenido de la pagina  -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Lista de usuarios</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="Tienda.jsp">Tienda</a></li>
                                    <li class="breadcrumb-item active">Lista de usuarios</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="content">
                    <div class="container-fluid">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Busqueda de usuario:</h3>
                                <div class="input-group">
                                    <input type="text" id="buscar" class="form-control float-left" placeholder="Ingrese nombre de usuario">
                                    <div class="input-group-append">
                                        <button class="btn btn-default"><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div id="usuarios" class="row d-flex aling-items-stretch">
                                    
                                </div>
                            </div>
                            </section>                 
                        </div>

<%@include file = "layouts/Footer.jsp"%>
<%
    } else {
        response.sendRedirect("index.jsp");
    }
%>
<script src="../js/Usuario.js" type="text/javascript"></script>
<script src="../js/sweetalert2.min.js" type="text/javascript"></script>