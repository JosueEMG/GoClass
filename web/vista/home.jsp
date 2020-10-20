<%-- 
    Document   : index
    Created on : 11-oct-2020, 22:41:43
    Author     : Josue Emmanuel Medina Garcia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <div class="wrapper">
            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="#" class="nav-link">Contact</a>
                    </li>
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
                    <a href="sesion.jsp"><button type="button" class="btn btn-success">Iniciar sesión</button></a>
                </ul>
            </nav>
            <!-- ESTE ES EL SLIDEBAR -->

            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="home.jsp" class="brand-link">
                    <img src="../img/unitclass_icon.png"
                         alt="UnitClass"
                         class="brand-image img-circle elevation-3"
                         style="opacity: .8">
                    <span class="brand-text font-weight-light">UnitClass</span>
                </a>
            </aside>

            <!--Este es el contenido de la pagina  -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Tienda de Cursos</h1>
                                <hr>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item active">Pagina de Inicio</li>
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

                    <!-- Default box -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Cursos de Programación</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
                            <!--Slides-->
                            <div class="carousel-inner" role="listbox">
                                <br>
                                <!-- PRIMER SLIDE-->
                                <div class="carousel-item active">

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/js_banner.jpeg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">JavaScript</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/java_ban.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Programación Java</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/mongodb_ban.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">MongoDB</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/mysql_ban.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">MySQL DataBase</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!--/.First slide-->

                                <!-- SEGUNDO SLIDE-->
                                <div class="carousel-item">

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/python_ban.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">Programación Python</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/oracle_ban.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">OracleDataBase</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/react_ban.png" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">ReactJS</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="float:left">
                                        <div class="card mb-2">
                                            <img class="card-img-top"
                                                 src="../img/imagenCardSlide/html_ban.jpg" alt="Card image cap">
                                            <div class="card-body">
                                                <h4 class="card-title">HTML + CSS + JS</h4>
                                                <br>
                                                <hr>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                    card's content.</p>
                                                <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Second slide-->
                            </div>
                            <!--/.Slides-->
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                        </div> 
                        <!-- /.card-footer-->
                    </div>
                    <!-- /.card -->
                </section>

                <!-- MUSICA  -->
                <section class="content">
                    <!-- Default box -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Musica</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <div class="row">
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/musica/guitarra_banner.png" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Curso Guitarra</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/musica/piano_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Curso Piano Online</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/musica/electrica_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Curso Guitarra Eléctrica</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/musica/bateria_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Curso Bateria Online</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                        </div> 
                        <!-- /.card-footer-->
                    </div>
                    <!-- /.card -->

                </section>
                <!-- COCINA  -->
                <section class="content">
                    <!-- Default box -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Cocina</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <div class="row">
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/cocina/pasteleria_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Pastelería</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/cocina/peruana_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cocina Peruana</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/cocina/pescados_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Pescados y Mariscos</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/cocina/internacional_banner.png" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Cocina Internacional</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">

                        </div> 

                        <!-- /.card-footer-->
                    </div>
                    <!-- /.card -->

                </section>
                <!-- EDICIÓN DE VIDEO  -->
                <section class="content">
                    <!-- Default box -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Edición de Video</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <div class="row">
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/edicion video/ae_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">After Effect</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/edicion video/ap_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Adobe Premier</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/edicion video/au_banner.jpeg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Adobe Audition</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/edicion video/filmora_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Filmora Wondershare</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                        </div> 
                        <!-- /.card-footer-->
                    </div>
                    <!-- /.card -->

                </section>
                <!-- HISTORIA  -->
                <section class="content">
                    <!-- Default box -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Historia</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <div class="row">
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/historia/historia_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Programación Java</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/historia/contabilidad_banner.png" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Programación Java</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/historia/ingles_banner.png" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Programación Java</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCardSlide/mysql_ban.jpg" alt="Card image cap">

                                        <div class="card-body">
                                            <h4 class="card-title">MySQL DataBase</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">

                        </div> 

                        <!-- /.card-footer-->
                    </div>
                    <!-- /.card -->

                </section>
                <!-- ARTE  -->
                <section class="content">
                    <!-- Default box -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Arte</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                    <i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                    <i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <div class="row">
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/arte/fotografia_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Curso Pintura</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/arte/photoshop_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Photoshop</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/arte/digital_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Dibujo Digital</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3" style="float:left">
                                    <div class="card mb-2">
                                        <img class="card-img-top"
                                             src="../img/imagenCursos/arte/fotografia_banner.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title">Fotografía</h4>
                                            <br>
                                            <hr>
                                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                                card's content.</p>
                                            <a href="sesion.jsp"><button class="btn btn-dark">Comprar</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">

                        </div> 

                        <!-- /.card-footer-->
                    </div>
                    <!-- /.card -->

                </section>

                <!-- TABLA UNITCLASS  -->
                <section class="content-header">
                    <h1>Temas recomendados para ti</h1>
                    <hr>
                </section>
                <section>
                    <div class="row mb-4 mx-5 mt-4">
                        <div class="col-md-4 mb-4">
                            <div class="shadow-box-example z-depth-1 flex-center">
                                <p class="white-text"> PHP + MySQL</p>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="shadow-box-example z-depth-1-half flex-center">
                                <p class="white-text"> Android Studio </p>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="shadow-box-example z-depth-2 flex-center">
                                <p class="white-text"> Python + Flexblox </p>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-5 mx-5">
                        <div class="col-md-4 mb-4">
                            <div class="shadow-box-example z-depth-3 flex-center">
                                <p class="white-text"> Django </p>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="shadow-box-example z-depth-4 flex-center">
                                <p class="white-text"> Linux </p>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="shadow-box-example z-depth-5 flex-center">
                                <p class="white-text"> C++ </p>
                            </div>
                        </div>
                    </div>
                </section> 
            </div>

            <!-- ENSEÑA EN UNITCLASS  -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item d-none d-sm-inline-block">
                        <h2>Enseña en línea</h2>
                        <p>
                            Crea un curso en vídeo en línea, llega a estudiantes de todo el mundo y gana dinero
                        </p>
                    </li>
                </ul>
                <!-- Right navbar links -->
                <ul class="navbar-nav ml-auto">
                    <button type="button" class="btn btn-dark">Enseña en UnitClass</button>
                </ul>
            </nav>
            <br>
            <!-- /.content-wrapper -->
            <!-- FOOTER -->
            <footer class="main-footer">
                <div class="float-right d-none d-sm-block">
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
        <script src="../js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../js/demo.js"></script>
    </body>
</html>


