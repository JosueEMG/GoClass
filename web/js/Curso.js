$(document).ready(function () {
    var funcion = "";
    var idCurso = $("#idCurso").val();
    listarContenido();
    function listarContenido() {
        funcion = "listarContenido";
        $.post("../GestionContenido", {funcion, idCurso}, (response) => {
            const contenidos = JSON.parse(response);
            var contador = 1;
            let template = "";
            contenidos.forEach(contenido => {
                template += `
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Capitulo `+
                    (contador++)+
                `</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fas fa-minus"></i></button>
                    </div>
                </div>
                <div class="card-body" style="display: block;">
                    <section class="col" idContenido = ${contenido.id_contenido}>
                        <center>
                            <div class="col-lg-10">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <iframe class="embed-responsive-item" src="${contenido.link}" allowfullscreen=""></iframe>
                                </div>
                            </div>
                        </center>
                    </section>
                </div>
                <!-- /.card-footer-->
            </div>`;
            })
            $("#contenido").html(template);
            
            
        })
    }

})


