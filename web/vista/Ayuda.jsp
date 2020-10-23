<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    
    if (ses.getAttribute("tipo") != null) {
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
                        <div usuarioid="7" class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                            <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-success">Soporte</h1>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="row">
                                        <div class="col-7">
                                            <h2 class="lead"><b>Chupetin Trujillo</b></h2>
                                            <br>
                                            <ul class="ml-4 mb-0 fa-ul text-muted">

                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Telefono: 987654321</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: Pajeros@gaa.com</li>
                                                <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-child"></i></span> Sexo: Indeterminado</li>
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