<%
    HttpSession ses = request.getSession();
    int tipo = (int)ses.getAttribute("tipo");
%>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Font Awesome -->

<link href="../css/css/all.min.css" rel="stylesheet" type="text/css"/>
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- overlayScrollbars -->  
<link href="../css/adminlte.min.css" rel="stylesheet" type="text/css"/>
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

<!-- LINK CAROUSEL -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- STYLETABLE -->
<link href="../css/css/stiletable.css" rel="stylesheet" type="text/css"/>

<!-- STYLEBOX -->
<link href="../css/cssSlider/styleBox.css" rel="stylesheet" type="text/css"/>

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
                    <a href="Tienda.jsp" class="nav-link">Tienda</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="Ayuda.jsp" class="nav-link">Contactanos</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <a href="../GestionLogin?opc=2" class="btn btn-danger">
                Cerrar Sesión</a>

            </ul>
        </nav>
        <!-- ESTE ES EL SLIDEBAR -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="Tienda.jsp" class="brand-link">
                <img src="../img/unitclass_icon.png"
                     alt="UnitClass"
                     class="brand-image img-circle elevation-3"
                     style="opacity: .8">
                <span class="brand-text font-weight-light">UnitClass</span>
            </a>
            <!-- SIDEBAR -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        
                        <img id="avatar5" src="../img/<%=ses.getAttribute("avatar")%>" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="Perfil.jsp" class="d-block">
                            <%=ses.getAttribute("nombre")%>
                        </a>
                    </div>
                </div>
                <!-- SIDEBAR MENU -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
                             with font-awesome or any other icon font library -->
                        <li class="nav-header">OPCIONES</li>
                        <!-- PROFILE -->
                        <li class="nav-item">
                            <a href="Perfil.jsp" class="nav-link">
                                <i class="nav-icon fas fa-user-circle"></i>
                                <p>
                                    Perfil
                                </p>
                            </a>
                        </li>
                        <!-- MIS CURSOS -->
                        <li class="nav-item">
                            <a href="MisCursos.jsp" class="nav-link">
                                <i class="nav-icon fas fa-book"></i>
                                <p>
                                    Mis Cursos
                                </p>
                            </a>
                        </li>
                        <!-- CORREO -->
                        <%
                            if (tipo != 3) {
                        %>
                        <li id="gestionCursos" class="nav-item">
                            <a href="GestionCursos.jsp" class="nav-link">
                                <i class="nav-icon fas fa-folder-open"></i>
                                <p>
                                    Gestion Cursos
                                </p>
                            </a>
                        </li>
                        <%
                            }
                        %>
                        <li class="nav-item">
                            <a href="Usuario.jsp" class="nav-link">
                                <i class="nav-icon fas fa-users"></i>
                                <p>
                                    Usuarios
                                </p>
                            </a>
                        </li>
                        <!-- AYUDA -->
                        <li class="nav-item">
                            <a href="Ayuda.jsp" class="nav-link">
                                <i class="nav-icon fas fa-question-circle"></i>
                                <p>
                                    Ayuda
                                </p>
                            </a>
                        </li>
                        <br>
                        <!-- CERRAR SESION-->
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>