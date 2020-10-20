<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<title>UnitClass | Lista Cursos</title>
<%@include file = "layouts/Nav.jsp"%>

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
                        <li class="breadcrumb-item"><a href="misCursos.jsp">Mis Cursos</a></li>
                        <li class="breadcrumb-item active">Tienda de Cursos</li>
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
<section>
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
</section>
<br>
<!-- /.content-wrapper -->

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

            <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                    <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active "> <i class="fas fa-credit-card mr-2"></i> Credit Card </a> </li>
                    <li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fab fa-paypal mr-2"></i> Paypal </a> </li>
                </ul>
            </div>

            <div class="tab-content ml-4 mr-4">
                <!-- credit card info-->
                <div id="credit-card" class="tab-pane fade show active pt-3">
                    <form role="form">
                        <div class="form-group"> <label for="username">
                                <h6>Card Owner</h6>
                            </label> <input type="text" name="username" placeholder="Card Owner Name" required class="form-control "> 
                        </div>
                        <div class="form-group"> <label for="cardNumber">
                                <h6>Card number</h6>
                            </label>
                            <div class="input-group"> <input type="text" name="cardNumber" placeholder="Valid card number" class="form-control " required>
                                <div class="input-group-append"> <span class="input-group-text text-muted"> <i class="fab fa-cc-visa mx-1"></i> <i class="fab fa-cc-mastercard mx-1"></i> <i class="fab fa-cc-amex mx-1"></i> </span> </div>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-8">
                            <div class="form-group"> <label><span class="hidden-xs">
                                        <h6>Expiration Date</h6>
                                    </span></label>
                                <div class="input-group"> <input type="number" placeholder="MM" name="" class="form-control" required> <input type="number" placeholder="YY" name="" class="form-control" required> </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                                    <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                </label> <input type="text" required class="form-control"> </div>
                        </div>
                    </div>
                </div>
                <div id="paypal" class="tab-pane fade pt-3">
                    <h6 class="pb-2">Select your paypal account type</h6>
                    <div class="form-group "> <label class="radio-inline"> <input type="radio" name="optradio" checked> Domestic </label> <label class="radio-inline"> <input type="radio" name="optradio" class="ml-5"> International </label></div>
                    <p> <a href="https://www.paypal.com"><button type="button" class="btn btn-primary "><i class="fab fa-paypal mr-2"></i> Log into my Paypal</button></a> </p>
                    <p class="text-muted"> Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
                </div> <!-- End -->
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary">Comprar</button>
            </div>
        </div>
    </div>
</div>

<!-- FOOTER -->
<%@include file = "layouts/Footer.jsp"%>
<script src="../js/GestionTienda.js" type="text/javascript"></script>


