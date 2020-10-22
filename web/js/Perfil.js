$(document).ready(function () {
    var funcion = "";
    var dni = $("#dni").val();
    obtenerUsuario();

    function obtenerUsuario() {
        funcion = "obtenerUsuario";
        $.post("../GestionPerfil", {funcion, dni}, (response) => {
            let tipo = "";
            let avatar="";
            let nombre="";
            let apellido="";
            let fecha="";
            let dni="";
            let correo="";
            let sexo="";    
            let nacimiento = "";
            let actual = new Date();
           
            const usuario =  JSON.parse(response);

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
            let edad = Math.round(resta/(1000*60*60*24)/365);
            $("#edad").html(edad);
            $("#tipo").html(tipo);
            $("#avatar").attr("src", "../img/"+avatar);
            $("#nombre").html(nombre);
            $("#apellido1").html(apellido);
            $("#fecha").html(fecha);
            $("#dni").html(dni);
            $("#correo").html(correo);
            $("#sexo").html(sexo);
            
        });
    }
});



