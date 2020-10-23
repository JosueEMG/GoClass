$(document).ready(function () {
    var funcion = "";
    var editar = false;
    var idUsuario = $("#idUsuario").val();
    var dni = $("#dni").val();
    obtenerUsuario();

    function obtenerUsuario() {
        funcion = "obtenerUsuario";
        $.post("../GestionPerfil", {funcion, dni}, (response) => {
            let tipo = "";
            let avatar = "";
            let nombre = "";
            let apellido = "";
            let fecha = "";
            let dni = "";
            let correo = "";
            let sexo = "";
            let nacimiento = "";
            let actual = new Date();

            const usuario = JSON.parse(response);

            if (usuario.id_tipo_us == 1) {
                tipo += `<span id="tipo" class="badge badge-warning">Root</span>`;
            }
            if (usuario.id_tipo_us == 2) {
                tipo += `<span id="tipo" class="badge badge-danger">Docente</span>`;
            }
            if (usuario.id_tipo_us == 3) {
                tipo += `<span id="tipo" class="badge badge-primary">Estudiante</span>`;
            }
            avatar = usuario.avatar;
            nombre = usuario.nombre_us;
            apellido = usuario.apellidos_us;
            fecha = usuario.fecha_nacimiento;
            dni = usuario.dni_us;
            correo = usuario.correo_us;
            sexo = usuario.sexo_us;
            nacimiento = Date.parse(usuario.fecha_nacimiento);
            let resta = actual.getTime() - nacimiento;
            let edad = Math.round(resta / (1000 * 60 * 60 * 24) / 365);
            $("#edad").html(edad);
            $("#tipo").html(tipo);
            $("#avatar").attr("src", "../img/" + avatar);
            $("#nombre").html(nombre);
            $("#apellido1").html(apellido);
            $("#fecha").html(fecha);
            $("#dni").html(dni);
            $("#correo").html(correo);
            $("#sexo").html(sexo);

        });
    }

    $("#activarEditar").on("click", e => {
        funcion = "obtenerUsuario";
        $.post("../GestionPerfil", {funcion, dni}, (response) => {
            const usuario = JSON.parse(response);
            $("#Nombre").removeAttr("readonly");
            $("#Apellido").removeAttr("readonly");
            $("#Fecha").removeAttr("readonly");
            $("#Correo").removeAttr("readonly");
            $("#Sexo").removeAttr("readonly");

            $("#Nombre").val(usuario.nombre_us);
            $("#Apellido").val(usuario.apellidos_us);
            $("#Fecha").val(usuario.fecha_nacimiento);
            $("#Correo").val(usuario.correo_us);
            $("#Sexo").val(usuario.sexo_us);
        })
        editar = true;
        e.preventDefault();
    });

    $("#editarUsuario").submit(e => {
        if (editar) {
            funcion = "editarUsuario";
            let nombre = $("#Nombre").val();
            let apellido = $("#Apellido").val();
            let fecha = $("#Fecha").val();
            let correo = $("#Correo").val();
            let sexo = $("#Sexo").val();
            $.post("../GestionPerfil", {idUsuario, nombre, apellido, fecha, correo, sexo, funcion}, (response) => {
                if (response === "editado") {
                    $("#Nombre").attr("readonly");
                    $("#Apellido").attr("readonly");
                    $("#Fecha").attr("readonly");
                    $("#Correo").attr("readonly");
                    $("#Sexo").attr("readonly");
                    successMessage();
                    $("#editarUsuario").trigger("reset");
                    obtenerUsuario();
                    editar = false;
                } else {
                    errorMessage();
                }
            })
        } else {
            errorMessage();
        }

        e.preventDefault();
    })

    function successMessage() {
        $(document).Toasts('create', {
            class: 'bg-success',
            title: 'Mensaje',
            body: 'Los datos fueron guardados con éxito'
        })
    }
    function errorMessage() {
        $(document).Toasts('create', {
            class: 'bg-danger',
            title: 'Mensaje',
            body: 'La edición está deshabilitada, precione boton editar'
        })
    }
});



