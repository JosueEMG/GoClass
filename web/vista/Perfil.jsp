<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%    if (ses.getAttribute("tipo") != null) {
        String dni = (String) ses.getAttribute("dni");//castear
        int idUsuario = (int) ses.getAttribute("idUsuario");
        String nombre = (String) ses.getAttribute("nombre");
%>
<input type="hidden" id="dni" value="<%=dni%>">
<input type="hidden" id="idUsuario" value="<%=idUsuario%>">
<title>UnitClass | Perfil</title>
<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Perfil de usuario</h1>
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
                    <div class="col-md-3">
                        <div class="card card-primary card-outline">
                            <div class="card-header text-muted border-bottom-0">
                                <span id="tipo">Administrador</span>
                                <div class="card-body box-profile"> 
                                    <div class="text-center">
                                        <img id="avatar" src="../img/PUJmv-Rr_400x400.jpg" class="profile-user-img img-fluid img-circle">
                                    </div>
                                </div>
                                <div class="text-center">
                                    <button type="button" data-toggle="modal" data-target="#cambiophoto" class="btn btn-warning btn-sm mb-3">Cambiar avatar</button>
                                </div>
                                <h3 id="nombre" class="profile-username text-center" style="color:#170944">Barny</h3>
                                <p id="apellido1" class="text-muted text-center">Trujillo</p>
                            </div>
                        </div>
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Datos Personales</h3>
                            </div>
                            <div class="card-body">
                                <strong style="color:#170944 ">
                                    <i class="fas fa-birthday-cake  mr-1"></i>Edad:
                                </strong>
                                <p id="edad" class="text-muted">20</p>
                                <strong style="color:#170944 ">
                                    <i class="fas fa-calendar  mr-1"></i>Fecha de Nacimiento:
                                </strong>
                                <p id="fecha" class="text-muted">12-12-2012</p>
                                <strong style="color:#170944 ">
                                    <i class="fas fa-user mr-1"></i>DNI:
                                </strong>
                                <p id="dni" class="text-muted">72185135</p>
                                <strong style="color:#170944 ">
                                    <i class="fas fa-at mr-1"></i>Correo:
                                </strong>
                                <p id="correo" class="text-muted">BarnyysusPutas@gaaa.com</p>
                                <strong style="color:#170944 ">
                                    <i class="fas fa-child mr-1"></i>Sexo:
                                </strong>
                                <p id="sexo" class="text-muted">Travesti</p>
                                <div class="text-center mt-1">
                                    <button id="activarEditar" class="btn btn-danger">Editar datos</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Editar Datos Personales</h3>
                            </div>
                            <div class="card-body">
                                <form id="editarUsuario" class="form-horizontal">
                                    <div class="form-group row">
                                        <label for="nombre" class="col-sm-2 col-form-label">Nombre:</label>
                                        <div class="col-sm-10">
                                            <input type="text" id="Nombre" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="apellido" class="col-sm-2 col-form-label">Apellido:</label>
                                        <div class="col-sm-10">
                                            <input type="text" id="Apellido" class="form-control" readonly>
                                        </div>
                                    </div>                                     
                                    <div class="form-group row">
                                        <label for="fecha" class="col-sm-2 col-form-label">Nacimiento:</label>
                                        <div class="col-sm-10">
                                            <input  type="date" id="Fecha" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="correo" class="col-sm-2 col-form-label">Correo:</label>
                                        <div class="col-sm-10">
                                            <input type="txt" id="Correo" class="form-control" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="sexo" class="col-sm-2 col-form-label">Sexo</label>
                                        <div class="col-sm-10">
                                            <select name="sexo" id="Sexo" class="form-control select2" style="width:100%" readonly>
                                                <option value="Masculino">Masculino</option>
                                                <option value="Femenino">Femenino</option>
                                                <option value="Otro">Otro</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="offset-sm-2 col-sm-10 float-right">
                                            <button type="submit" class="btn btn-block btn-outline-success">Guardar Datos</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="card-footer">
                                <p class="text-muted">Por favor verificar los datos antes de guardas los cambios</p>
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
        response.sendRedirect("Home.jsp");
    }
%>
<script src="../js/Perfil.js" type="text/javascript"></script>
<script src="../js/toastr.min.js" type="text/javascript"></script>
