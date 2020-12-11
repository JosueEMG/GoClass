$(document).ready(function () {
    let funcion;
    let labels = [];
    let datas = [];
    fillArrays();

    function fillArrays() {
        funcion = "listarNombres";
        $.post("../GestionMisCursos", {funcion}, (response) => {
            const label = JSON.parse(response);
            label.forEach(simpleLabel => {
                labels.push(simpleLabel);
            })
        });
        funcion = "listarInscripciones";
        $.post("../GestionMisCursos", {funcion}, (response) => {
            const data = JSON.parse(response);
            data.forEach(simpleData => {
                datas.push(simpleData);
            })
        });
    }

    var pieChartCanvas = $('#pieChart').get(0).getContext('2d');
    var pieData = {
        labels: labels,
        datasets: [
            {
                data: datas,
                backgroundColor: ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#8D72E2'],
            }
        ]
    }
    var pieOptions = {
        maintainAspectRatio: false,
        responsive: true,
    }
    var pieChart = new Chart(pieChartCanvas, {
        type: 'pie',
        data: pieData,
        options: pieOptions
    })

});
