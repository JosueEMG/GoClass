<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    
    if (ses.getAttribute("tipo") != null) {
%>
<title>UnitClass | Cursos</title>

<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Poner Nombre del Curso Pajeros</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="MisCursos.jsp">Mis Cursos</a></li>
                        <li class="breadcrumb-item active">Curso</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <!-- CAPITULO 1 -->
    <section class="content">
        <!-- Default box -->
        <div class="container-fluid">
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Capitulo 1</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>

                    </div>
                </div>
                <div class="card-body" style="display: block;">

                    <!-- /.card-body -->
                </div>
                <div class="card-footer">
                   
                </div> 
                <!-- /.card-footer-->
            </div>

            <!-- CAPITULO 2 -->

            <!-- Default box -->
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Capitulo 2</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>

                    </div>
                </div>
                <div class="card-body" style="display: block;">

                    <!-- /.card-body -->
                </div>
                <div class="card-footer">
                    
                </div> 
                <!-- /.card-footer-->
            </div>
            <!-- CAPITULO 3 -->

            <!-- Default box -->
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Capitulo 3</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>

                    </div>
                </div>
                <div class="card-body" style="display: block;">

                    <!-- /.card-body -->
                </div>
                <div class="card-footer">
                    
                </div> 
                <!-- /.card-footer-->
            </div>
            <!-- CAPITULO 4 -->


            <!-- Default box -->
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Capitulo 4</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>

                    </div>
                </div>
                <div class="card-body" style="display: block;">

                    <!-- /.card-body -->
                </div>
                <div class="card-footer">
                    
                </div> 
                <!-- /.card-footer-->
            </div>
            <!-- /.card -->


            <!-- CAPITULO 5 -->

            <!-- Default box -->
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Capitulo 5</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>

                    </div>
                </div>
                <div class="card-body" style="display: block;">

                    <!-- /.card-body -->
                </div>
                <div class="card-footer">
                   
                </div> 
                <!-- /.card-footer-->
            </div>
        </div>
    </section>
</div>
<%@include file = "layouts/Footer.jsp"%>

<%
    } else {
        response.sendRedirect("Login.jsp");
    }
%>
