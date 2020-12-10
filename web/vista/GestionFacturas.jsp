<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    if (ses.getAttribute("tipo") != null) {
        String dni = (String) ses.getAttribute("dni");//castear
        int idUsuario = (int) ses.getAttribute("idUsuario");
        String nombre = (String) ses.getAttribute("nombre");
%>
<%
    String mensaje = "";
    if (request.getAttribute("dato") != null) {
        mensaje = (String) request.getAttribute("dato");
    }
     if ((int)ses.getAttribute("tipo") != 2) {
%>
<title>UnitClass | Facturas</title>
<input type="hidden" id="idUsuario" value="<%=ses.getAttribute("idUsuario")%>">
<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Facturas</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="Tienda.jsp">Tienda</a></li>
                        <li class="breadcrumb-item active">Datos personales</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="contet">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Aqui encontraras todas tus facturas ...</h3>

                                <div class="card-tools">
                                    <div class="input-group input-group-sm" style="width: 250px;">
                                        <input id="buscar-factura" type="text" name="table_search" class="form-control float-right" placeholder="Buscar por curso">

                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-default">
                                                <i class="fas fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div id="lisfacturas" class="card-body table-responsive p-0">
                               
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file = "layouts/Footer.jsp"%>
<%
        }else {
            response.sendRedirect("Tienda.jsp");
        }
    } else {
        response.sendRedirect("index.jsp");
    }
%>
<script src="../js/MisFacturas.js" type="text/javascript"></script>
<script src="../js/sweetalert2.min.js" type="text/javascript"></script>