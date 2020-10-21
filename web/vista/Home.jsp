<%-- 
    Document   : index
    Created on : 11-oct-2020, 22:41:43
    Author     : Josue Emmanuel Medina Garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ses = request.getSession();
    if (ses.getAttribute("tipo") != null) {
        response.sendRedirect("Tienda.jsp");
    } else {
%>
<!DOCTYPE html>
<html style="height: auto; min-height: 100%;">
    <head>
        <meta charset="utf-8"<!>
              <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>UnitClass | Index</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="../css/css/all.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- overlayScrollbars -->  <link rel="stylesheet" href="../css/adminlte.min.css">
        <!-- Google Font: Source Sans Pro -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

        <!-- LINK CAROUSEL -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!-- STYLETABLE -->
        <link href="../css/css/stiletable.css" rel="stylesheet" type="text/css"/>

        <!-- STYLEBOX -->
        <link href="../cssSlider/styleBox.css" rel="stylesheet" type="text/css"/>

    </head>
    <body class="hold-transition sidebar-mini">
        <!-- Site wrapper -->
        <div>
            <!-- Navbar -->
            <nav class="navbar navbar-expand navbar-white navbar-light mb-2">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <p>
                            <img src="../img/unitclass_icon.png"
                                 alt="UnitClass"
                                 class="brand-image img-circle elevation-3"
                                 style="opacity: .8" height="60" width="60">
                            <span class="text-center mx-2">UnitClass</span>
                        </p>
                    </li>
                    <a href="Contactanos.jsp" class="nav-link text-center mt-2">Contactanos</a>
                </ul>

                <!-- SEARCH FORM 
                <form class="form-inline ml-3">
                    <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar" type="Buscar" placeholder="Buscar" aria-label="Buscar">
                        <div class="input-group-append">
                            <button class="btn btn-navbar" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>-->

                <!-- Right navbar links -->
                <ul class="navbar-nav ml-auto">
                    <a href="Login.jsp"><button type="button" class="btn btn-success">Iniciar sesión</button></a>
                </ul>
            </nav>
            <hr class="mt-2">
            <!--Este es el contenido de la pagina  -->
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-1">
                        <div class="col-sm-6">
                            <h1>Tienda de Cursos</h1>

                            <hr>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">

                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <!-- CARROUSEL  -->
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

            <!-- LISTA DE CURSOS POR CATEGORIAS  -->
            <!-- PROMOCIONES  -->
            <section class="content">
                <div class="container-fluid">
                    <div class="card">
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
                    <div class="card">
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
                    <div class="card">
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
                    <div class="card">
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
                    <div class="card">
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
                    <div class="card">
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
            <!-- ENSEÑA EN UNITCLASS  -->
            <footer>
                <nav class="navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item d-none d-sm-inline-block">
                        <h2>Enseña en línea</h2>
                        <p>
                            Crea un curso en vídeo en línea, llega a estudiantes de todo el mundo y gana dinero
                        </p>
                    </li>
                </ul>
            </nav>
                <div class="d-none d-sm-block">
                    <b>Version</b> 3.0.5
                </div>
                <strong>Copyright &copy; 2020 <a href="http://UnitClass.com">UnitClass.com</a>.</strong> Todos los derechos reservados Los Packeros S.A.
            </footer>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="../js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <!-- AdminLTE for demo purposes -->
        <script src="../js/demo.js"></script>
    </body>
</html>
<%
    }
%>
<script src="../js/Tienda.js" type="text/javascript"></script>