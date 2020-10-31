<%-- 
    Document   : index
    Created on : 23-oct-2020, 15:43:01
    Author     : Josue Emmanuel Medina Garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ses = request.getSession();
    if (ses.getAttribute("tipo") != null) {
        response.sendRedirect("https://unitclass.azurewebsites.net/vista/Tienda.jsp");
    } else {
%>
<!DOCTYPE html>
<input type="hidden" id="tipo" value="nulo">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title>UnitClass | Ventana Principal</title>

        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="../css/css/all.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../css/adminlte.min.css">
        <!-- LINK CAROUSEL -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    </head>
    <body class="hold-transition layout-top-nav">
        <div class="wrapper">

            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
                <div class="container">
                    <a href="index.jsp" class="navbar-brand">
                        <img src="../img/unitclass_icon.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                             style="opacity: .8">
                        <span class="brand-text font-weight-light">UnitClass</span>
                    </a>

                    <div class="collapse navbar-collapse order-3" id="navbarCollapse">
                        <!-- Left navbar links -->
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="Contactanos.jsp" class="nav-link">Contactanos</a>
                            </li>
                        </ul>
                    </div>
                    <!-- Right navbar links -->
                    <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
                        <a href="Login.jsp" class="btn btn-success">Iniciar sesión</a>
                    </ul>
                </div>
            </nav>
            <!-- /.navbar -->

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0 text-dark">Tienda de cursos</h1>
                            </div><!-- /.col -->

                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content 
                <!-- MODAL -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Metodo de Pago</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Por favor, iniciar sesion para realizar la compra.
                            </div>
                            <div class="modal-footer">
                                <a href="Login.jsp" class="btn btn-success">Iniciar sesión</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="content">
                    <div class="container">
                        <div class="col">
                            <section>
                                <div class="container-lg my-3">
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <!-- Carousel indicators -->
                                        <ol class="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                        </ol>
                                        <!-- Wrapper for carousel items -->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img src="../img/imagenSlide/html_extend.png" alt="First Slide">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../img/imagenSlide/python_react_extend.png" alt="Second Slide">
                                            </div>
                                            <div class="carousel-item">
                                                <img src="../img/imagenSlide/nodejs_extend.jpeg" alt="Third Slide">
                                            </div>
                                        </div>
                                        <!-- Carousel controls -->
                                        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>
                                    </div>
                                </div>
                            </section>
                            <section class="content">
                                <div class="container-fluid">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Programación</h3>

                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
                                        </div>
                                        <div class="card-body" >
                                            <div id="programacion" class="row d-flex aling-items-stretch">

                                            </div>
                                        </div>
                                        <div class="card-footer">
                                        </div> 
                                    </div>
                                </div>
                            </section>  
                            <section class="content">
                                <div class="container-fluid">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Música</h3>
                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div id="musica" class="row d-flex aling-items-stretch">

                                            </div>
                                        </div>
                                        <div class="card-footer">
                                        </div> 
                                    </div>
                                </div>
                            </section>
                            <section class="content">
                                <div class="container-fluid">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Cocina</h3>
                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div id="cocina" class="row d-flex aling-items-stretch">

                                            </div>
                                        </div>
                                        <div class="card-footer">
                                        </div> 
                                    </div>

                                </div>
                            </section>
                            <section class="content">
                                <div class="container-fluid">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Edición de Vídeo</h3>
                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div id="edicionVideo" class="row d-flex aling-items-stretch">

                                            </div>
                                        </div>
                                        <div class="card-footer">
                                        </div> 
                                    </div>

                                </div>
                            </section>
                            <section class="content">
                                <div class="container-fluid">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Historia</h3>
                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div id="historia" class="row d-flex aling-items-stretch">

                                            </div>
                                        </div>
                                        <div class="card-footer">
                                        </div> 
                                    </div>
                                </div>
                            </section>
                            <section class="content">
                                <div class="container-fluid">
                                    <div class="card card-primary">
                                        <div class="card-header">
                                            <h3 class="card-title">Arte</h3>
                                            <div class="card-tools">
                                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                                    <i class="fas fa-minus"></i></button>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div id="arte" class="row d-flex aling-items-stretch">

                                            </div>
                                        </div>
                                        <div class="card-footer">
                                        </div> 
                                    </div>

                                </div>
                            </section>
                            <!-- /.col-md-6 -->
                        </div>
                        <!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <!-- Main Footer -->

            <%@include file = "layouts/Footer.jsp"%>
            <%
                }
            %>
            <script src="../js/Tienda.js" type="text/javascript"></script>