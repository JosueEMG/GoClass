<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%if (ses.getAttribute("tipo") != null) {
        String dni = (String) ses.getAttribute("dni");//castear
        int idUsuario = (int) ses.getAttribute("idUsuario");
        String nombre = (String) ses.getAttribute("nombre");
        String mensaje = "";
        if (request.getAttribute("dato") != null) {
            mensaje = (String) request.getAttribute("dato");
        }
        if ((int) ses.getAttribute("tipo") == 1) {
%>
<title>UnitClass | Facturas</title>
<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Graficos</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="Tienda.jsp">Tienda</a></li>
                        <li class="breadcrumb-item active">Graficos</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-danger collapsed-card">
                        <div class="card-header">
                            <h3 class="card-title">Los 8 cursos mas comprados</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <canvas id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                        </div>
                        <!-- /.card-body -->
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
<script src="../js/Graficos.js" type="text/javascript"></script>
<script src="../js/Chart.min.js" type="text/javascript"></script>