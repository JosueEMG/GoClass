<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    if (ses.getAttribute("tipo") != null) {
%>
<title>UnitClass | Ayuda</title>

<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Mesa de ayuda</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="Tienda.jsp">Tienda</a></li>
                        <li class="breadcrumb-item active">Mesa de ayuda</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Soporte Tecnico</h3>
                </div>
                <div class="card-body">
                    <div id="usuarios" class="row d-flex aling-items-stretch">
                        <div class="col-8 col-sm-6 col-md-4 d-flex align-items-stretch">
                            <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-success">Soporte</h1>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>Josué Emmnauel Medina García</b></h2>
                                            <br>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI: 564563726</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 19</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: josue@gmail.com</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: Masculino</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="../img/default.png" alt="" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <button class="borrar-usuario btn btn-outline-primary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                            <i class="fas fa-microphone mr-1"></i>LLamar
                                        </button>
                                    </div>

                                </div>
                            </div>
                        </div>         
                        <div class="col-8 col-sm-6 col-md-4 d-flex align-items-stretch">
                            <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-success">Soporte</h1>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>Juan Carlos Montenegro López</b></h2>
                                            <br>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI: 123456</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 20</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: montenegro@gmail.com</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: Masculino</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="../img/default.png" alt="" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <button class="borrar-usuario btn btn-outline-primary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                            <i class="fas fa-microphone mr-1"></i>LLamar
                                        </button>
                                    </div>

                                </div>
                            </div>
                        </div>      
                        <div class="col-8 col-sm-6 col-md-4 d-flex align-items-stretch">
                            <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-success">Soporte</h1>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>Gean Pieer Genaro López Zevallos</b></h2>
                                            <br>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI: 123456</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 19</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: geanpieer@outlook.com</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: Masculino</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="../img/default.png" alt="" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <button class="borrar-usuario btn btn-outline-primary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                            <i class="fas fa-microphone mr-1"></i>LLamar
                                        </button>
                                    </div>

                                </div>
                            </div>
                        </div>      
                        <div class="col-8 col-sm-6 col-md-4 d-flex align-items-stretch">
                            <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-success">Soporte</h1>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>Enzo Giuliano Villanueva Méndez</b></h2>
                                            <br>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI: 1224784</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 19</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: enzo@icloud.com</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: Masculino</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="../img/default.png" alt="" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <button class="borrar-usuario btn btn-outline-primary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                            <i class="fas fa-microphone mr-1"></i>LLamar
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>      
                        <div class="col-8 col-sm-6 col-md-4 d-flex align-items-stretch">
                            <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-success">Soporte</h1>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>Juan Jesús Guzman Mayanga</b></h2>
                                            <br>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI: 35463524</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: 19</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: jesus12@icloud.com</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: Masculino</li>
                                            </ul>
                                        </div>
                                        <div class="col-5 text-center">
                                            <img src="../img/default.png" alt="" class="img-circle img-fluid">
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <button class="borrar-usuario btn btn-outline-primary m-1" type="button" data-toggle="modal" data-target="#confirmar">
                                            <i class="fas fa-microphone mr-1"></i>LLamar
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>     
                    </div>
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