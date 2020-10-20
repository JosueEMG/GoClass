<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<title>UnitClass | Perfil</title>
<%@include file = "layouts/Nav.jsp"%>

<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
   <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Usuario: Barny</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="adm_catalogo.php">Catalogo</a></li>
                            <li class="breadcrumb-item active">Datos Personales</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
  
    <section>
        <div class="contet">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="card card-success card-outline"> <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-warning">Administrador</h1>
                                <div class="card-body box-profile"> 
                                    <div class="text-center">
                                        <img id="avatar2" src="../img/PUJmv-Rr_400x400.jpg" class="profile-user-img img-fluid img-circle">
                                    </div>
                                </div>
                                <div class="text-center mt-1">
                                    <button type="button" data-toggle="modal" data-target="#cambiophoto" class="btn btn-primary btn-sm">Cambiar avatar</button>
                                </div>
                                <input id="id_usuario" type="hidden" value="1">
                                <h3 id="nombre_us" class="profile-username text-center text-success">Barny</h3>
                                <p id="apellidos_us" class="text-muted text-center">Trujillo</p>

                            </div>
                        </div>
                        
                        <div class="card card-success">
                            <div class="card-header">
                                <h3 class="card-title">Datos Personales</h3>
                            </div>
                            <div class="card-body">
                                <strong style="color:#0B7300">
                                    <i class="fas fa-calendar  mr-1"></i>Fecha de Nacimiento:
                                </strong>
                                <p id="telefono_us" class="text-muted">12-12-2012</p>
                                <strong style="color:#0B7300">
                                    <i class="fas fa-user mr-1"></i>DNI:
                                </strong>
                                <p id="residencia_us" class="text-muted">72185135</p>
                                <strong style="color:#0B7300">
                                    <i class="fas fa-at mr-1"></i>Correo:
                                </strong>
                                <p id="correo_us" class="text-muted">BarnyysusPutas@gaaa.com</p>
                                <strong style="color:#0B7300">

                                    <i class="fas fa-child mr-1"></i>Sexo:
                                </strong>
                                <p id="sexo_us" class="text-muted">Travesti</p>


                            </div>

                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="card card-success">
                            <div class="card-header">
                                <h3 class="card-title">Editar Datos Personales</h3>
                            </div>
                            <div class="card-body">
                                <div class="alert alert-success text-center" id="editado" style="display:none;">
                                    <span><i class="fas fa-check m-1"></i>Editado</span>
                                </div>
                                <div class="alert alert-danger text-center" id="noeditado" style="display:none;">
                                    <span><i class="fas fa-times m-1"></i>Edicion deshabilitada</span>
                                </div>
                                <form id="form-usuario" class="form-horizontal">
                                    <div class="form-group row">
                                        <label for="residencia" class="col-sm-2 col-form-label">Nombre:</label>
                                        <div class="col-sm-10">
                                            <input type="text" id="Nombre" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="residencia" class="col-sm-2 col-form-label">Apellido:</label>
                                        <div class="col-sm-10">
                                            <input type="text" id="Apellido" class="form-control">
                                        </div>
                                    </div>                                     

                                    <div class="form-group row">
                                        <label for="telefono" class="col-sm-2 col-form-label">Fecha de Nacimiento:</label>

                                        <div class="col-sm-10">
                                            <input  type="date" id="calendario" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="correo" class="col-sm-2 col-form-label">Correo:</label>
                                        <div class="col-sm-10">
                                            <input type="txt" id="correo" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="sexo" class="col-sm-2 col-form-label">Sexo</label>
                                        <div class="col-sm-10">
                                            <select name="sexo" id="sexo" class="form-control select2" style="width:100%">
                                                <option value="Masculino">Masculino</option>
                                                <option value="Femenino">Femenino</option>
                                                <option value="Otro">Otro</option>
                                            </select>
                                        </div>
                                    </div>

                            </div>
                            <div class="form-group row">
                                <div class="offset-sm-2 col-sm-10 float-right">
                                    <button type="submit" class="btn btn-block btn-outline-success">Editar Datos</button>
                                </div>
                            </div>
                            </form>
                        </div>
                        <div class="card-footer">
                            <p class="text-muted">Verifique bien sus Datos antes de Registrar</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>







<%@include file = "layouts/Footer.jsp"%>