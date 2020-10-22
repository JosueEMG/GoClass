$(document).ready(function(){
    listadoAlumnos();

    function listadoAlumnos(){
        var funcion = "listadoAlumnos";
        
    $.post("../GestionUsuario", {funcion}, (response) => {
        const usuarios = JSON.parse(response);      
        let template = "";
        usuarios.forEach(u => {
        let actual = new Date();
        let nacimiento = Date.parse(u.fecha_nacimiento);
        let resta = actual.getTime()-nacimiento;
        template += `
            <div usuarioid=${u.id_usuario} class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                                  <div class="card bg-light">
                                  <div class="card-header text-muted border-bottom-0"><h1 class="badge badge-danger">Docente</h1>
                                            </div>
                                            <div class="card-body pt-0">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h2 class="lead"><b>${u.nombre_us}</b></h2>
                                                        <br>
                                                        <ul class="ml-4 mb-0 fa-ul text-muted">
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-id-card"></i></span> DNI: ${u.dni_us}</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-birthday-cake"></i></span> Edad: ${Math.round(resta/(1000*60*60*24)/365)} </li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-at"></i></span> Correo: ${u.correo_us}</li>
                                                            <li class="small-box-footer"><span class="fa-li"><i class="fas fa-lg fa-smile-wink"></i></span> Sexo: ${u.sexo_us}</li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-5 text-center">

                                                        <img src="../img/${u.avatar}" alt="" class="img-circle img-fluid">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer">

                                                </div>
                                            </div>
                                        </div>
                                    </div>           
                                        `
                        });           
            $("#usuariosAlumnos").html(template);
         });
    };
});


