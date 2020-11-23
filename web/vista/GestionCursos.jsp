<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "layouts/Cabecera.jsp"%>
<%@include file = "layouts/Nav.jsp"%>
<%@page import="modelo.*"%>
<%@page import="controlador.Cb_especialidad"%>
<%    
    if (ses.getAttribute("tipo") != null) {
        Cb_especialidad obj = new Cb_especialidad();
        int cod = 0;
        if ((int)ses.getAttribute("tipo") == 2) {
%>
<title>UnitClass | Gestion Cursos</title>
<!-- MODAL Añadir -->
<div class="modal fade bd-example-modal-lg" id="añadir" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Añadir Curso</h5>
            </div>
            <div class="modal-body">
                <div class="text-center m-3">
                    <h3 id="nombre_logo">Añadir Curso</h3>
                </div>
                <form id="form-editar-curso" class="form-horizontal">  
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label id="nombre">Nombre:</label>
                            <input type="text" id="nombreCurso" class="form-control" placeholder="Ingrese Nombre del Curso">
                        </div>
                        <div class="form-group col-md-6">
                            <label id="precio">Precio:</label>
                            <input type="text" id="precioCurso" class="form-control" placeholder="Ingrese el Precio">
                        </div>
                    </div>                                     
                    <div class="form-group">
                        <label id="especialidad">Especialidad:</label>
                        <select id="especialidadCurso" name="especialidadCurso" class="form-control select2" style="width: 100%">
                            <option value="">Elegir</option>
                            <%
                                for (especialidad e: obj.listaEspecialidades()) {
                                    if(e.getId_especialidad()==cod) {
                                        out.print("<option value="+e.getId_especialidad()+" selected>"+e.getNombre()+"</option>");
                                    }
                                    else {
                                        out.print("<option value="+e.getId_especialidad()+">"+e.getNombre()+"</option>");
                                    }
                                } 
                            %>
                        </select>       
                    </div>
                    <div class="form-group">
                        <label id="detalle">Descripción:</label>
                        <textarea class="form-control" id="adicional" cols="0" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 1</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 1" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 1" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 2</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 2" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 2" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 3</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 3" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 3" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div> <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 4</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 4" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 4" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 5</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 5" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 5" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                </form>  
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<!-- MODAL Modificar -->
<div class="modal fade bd-example-modal-lg" id="modificar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modificar Curso</h5>
                <!--   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
       </button>-->
            </div>
            <div class="modal-body">
                <div class="text-center m-3">
                    <h3 id="nombre_logo">Programación Java</h3>
                </div>
                <form id="form-editar-curso" class="form-horizontal">  
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label id="nombre">Nombre:</label>
                            <input type="text" id="nombreCurso" class="form-control" placeholder="Ingrese Nombre del Curso">
                        </div>
                        <div class="form-group col-md-6">
                            <label id="precio">Precio:</label>
                            <input type="text" id="precioCurso" class="form-control" placeholder="Ingrese el Precio">
                        </div>
                    </div>                                     
                    <div class="form-group">
                        <label id="especialidad">Especialidad:</label>
                        <select id="especialidadCurso" name="especialidadCurso" class="form-control select2" style="width: 100%">
                            <option>Poner Espermas</option>
                            <option>Pajeros</option>
                        </select>        
                    </div>
                    <div class="form-group">
                        <label id="detalle">Descripción:</label>
                        <textarea class="form-control" id="adicional" cols="0" rows="2"></textarea>
                    </div>
                    <div class="form-group">
                        <div class="card card-success">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 1</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 1" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 1" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 2</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 2" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 2" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 3</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 3" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 3" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div> <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 4</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 4" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 4" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Capitulo 5</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                        <i class="fas fa-minus"></i></button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                                        <i class="fas fa-times"></i></button>

                                </div>
                            </div>
                            <div class="card-body" style="display: block;">
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir Video 5" />
                                </form>
                                <br>
                                <br>
                                <form enctype="multipart/form-data" method="POST">
                                    <input name="uploadedfile" type="file" />
                                    <input type="submit" value="Subir PDF 5" />
                                </form>
                                <!-- /.card-body -->
                            </div>
                            <div class="card-footer">

                            </div> 
                            <!-- /.card-footer-->
                        </div>
                    </div>

                </form>  
            </div>
            <!-- CONTENIDO -->

            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<!--Este es el contenido de la pagina  -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Gestión cursos<button type="button" class="btn btn-warning ml-2" data-toggle="modal" data-target="#añadir">Añadir Curso</button></h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="Tienda.jsp">Tienda</a></li>
                                <li class="breadcrumb-item active">Gestión cursos</li>
                            </ol>

                        </div>
                </div>
            </div>
    </section>  
    <section class="content"> 
        <input type="hidden" id="idprofesor" value="<%=ses.getAttribute("idUsuario")%>">
        <div class="container-fluid">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Cursos</h3>
                </div>
                <div class="card-body">
                    <div id="gestioncurso" class="row d-flex aling-items-stretch">
                   
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<%@include file = "layouts/Footer.jsp"%>
<%
        }else {
            response.sendRedirect("Tienda.jsp");
        }
    } else {
        response.sendRedirect("index.jsp");
    }
%>
<script src="../js/GestionCurso.js" type="text/javascript"></script>