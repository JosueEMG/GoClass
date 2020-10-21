<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <body>
        <!--Este es el contenido de la pagina  -->
        <div>
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Mesa de Ayuda</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item active"><a href="Home.jsp">Pagina Principal</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </section>

            <section class="content">
                <div class="container-fluid">
                    <div class="card card-success">
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

                                                    <img src="../img/unnamed.jpg" alt="" class="img-circle img-fluid">
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
    </body>
</html>

