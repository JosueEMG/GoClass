$(document).ready(function () {
    var funcion = "";
    var idUsuario = $("#idUsuario").val();
    listarFacturas();
    function listarFacturas(consulta) {
        funcion = "listarFacturas";
        $.post("../GestionTienda", {funcion, idUsuario,consulta}, (response) => {
            const misFacturas = JSON.parse(response);
            let template = "";
            console.log(misFacturas);
            template += `
             <table class="table tabla table-hover text-nowrap">
                                    <thead>
                                        <tr>
                                            <th>Id Factura</th>
                                            <th>Fecha</th>
                                            <th>Nombre</th>
                                            <th>Curso</th>
                                            <th>Metodo Pago</th>
                                            <th>Precio</th>
                                        </tr>
                                    </thead>
                                    <tbody>`;
            misFacturas.forEach(miFactura => {
                template += `
                <tr>
                    <td>${miFactura.id_factura}</td>
                    <td>${miFactura.fecha}</td>
                    <td>${miFactura.nombre_usuario}</td>
                    <td>${miFactura.nombre_curso}</td>
                    <td>${miFactura.nombre_metodo_pago}</td>
                    <td>${miFactura.precio}</td>
                </tr>`;
            })
            template += `</tbody></table>`;
            $("#lisfacturas").html(template);

        })
    }
    
    $(document).on('keyup','#buscar-factura',function(){
        let valor = $(this).val();
        if(valor!=""){
            listarFacturas(valor);
        }
        else{
            listarFacturas();
        }
        
    });
})