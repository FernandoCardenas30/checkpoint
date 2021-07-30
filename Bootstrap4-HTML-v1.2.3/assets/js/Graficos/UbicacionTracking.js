  $.ajax({
                url:   'Controllers/GraficasUbicacion.php',
                type:  'post',
                beforeSend: function () {
                        alert("Procesando... espere por favor");
                },
                success:  function (response) {

                     var chart = Highcharts.chart('container', {
    title: {
        text: ''
    },

    subtitle: {
        text: ''
    },

    xAxis: {
        categories: ['UP', 'Metrología', 'Servicios Externos', 'Cuarentena', 'Scrap']
    },

    series: [{
        type: 'column',
        colorByPoint: true,
        data: [parseInt(response), 32, 26, 15, 10],
        showInLegend: false,
        name: 'TRACKING'

    }],
    colors: ['#21618C', '#2E86C1', '#5DADE2', '#AED6F1', '#EBF5FB'],
    credits: {
        enabled: false
    }

});  
                }
        });


