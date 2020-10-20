<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file = "layouts/Cabecera.jsp"%>
        <title>UnitClass | Usuario</title>
        <%@include file = "layouts/Nav.jsp"%>

            <!--Este es el contenido de la pagina  -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1>Lista de Usuarios</h1>

                                <hr>

                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="Cursos.jsp">Mis Cursos</a></li>
                                    <li class="breadcrumb-item active">Pagina Principal</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="content">
                    <div class="container-fluid">
                        <div class="card card-success">
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
                                    <div usuarioid="7" class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                                        <div class="card bg-light">
                                            <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-warning">Administrador</h1>
                                            </div>
                                            <div class="card-body pt-0">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h2 class="lead"><b>Chupetin Trujillo</b></h2>
                                                        <br>
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI:    789214583</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 24</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: Hacermeunpete@gaa.com</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: Indeterminado</li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-5 text-center">

                                                        <img src="../img/unnamed.jpg" alt="" class="img-circle img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer">
                                                <div class="text-right">
                                                    <button class="borrar-usuario btn btn-danger m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                                        <i class="fas fa-window-close mr-1"></i>Eliminar
                                                    </button>

                                               <!--     <button class="descender btn btn-secondary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                                        <i class="fas fa-sort-amount-down mr-1"></i>Descender
                                                    </button>-->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div usuarioid="7" class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                                        <div class="card bg-light">
                                            <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-danger">Profesor</h1>
                                            </div>
                                            <div class="card-body pt-0">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h2 class="lead"><b>Luis Alberto Ruiz</b></h2>
                                                        <br>
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI:    789214583</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 44</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: Chabelos@gaa.com</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: Travesti</li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-5 text-center">

                                                        <img src="../img/images.jpg" alt="" class="img-circle img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer">
                                                <div class="text-right">
                                                    <button class="borrar-usuario btn btn-danger m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                                        <i class="fas fa-window-close mr-1"></i>Eliminar
                                                    </button>

                                                    <button class="descender btn btn-secondary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                                        <i class="fas fa-sort-amount-down mr-1"></i>Descender
                                                    </button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div usuarioid="7" class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                                        <div class="card bg-light">
                                            <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-primary">Alumno</h1>
                                            </div>
                                            <div class="card-body pt-0">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h2 class="lead"><b>Barny y sus Putas</b></h2>
                                                        <br>
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI:    789214583</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 44</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: Pajeros@gaa.com</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: ???</li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-5 text-center">

                                                        <img src="../img/PUJmv-Rr_400x400.jpg" alt="" class="img-circle img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer">
                                                <div class="text-right">
                                                    <button class="borrar-usuario btn btn-danger m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                                        <i class="fas fa-window-close mr-1"></i>Eliminar
                                                    </button>

                                                    <button class="descender btn btn-primary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                                        <i class="fas fa-sort-amount-up mr-1"></i>Ascender
                                                    </button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            </section>
                   




                        </div>

<%@include file = "layouts/Footer.jsp"%>
