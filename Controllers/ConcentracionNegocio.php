<?php

include("Coneccion.php");

$conexionBusinnes= Conectar();

  $Fecha = mysqli_fetch_array(ConsultaUltimaFecha());
//    $Fecha = "2021-01-29";

 $BussinessLine = "SELECT LineaNegocio, Objetivo, BackLog, FacturadoMes, FacturadoDia as Total FROM tbl_lineanegocio where Fecha = '$Fecha[0]'  GROUP BY LineaNegocio";

        $BSL=mysqli_query($conexionBusinnes,$BussinessLine) or die(mysqli_error($conexionBusinnes));


    function color_rand() {
       return sprintf('#%06X', mt_rand(0, 0x2e86c1));
    }

echo "<script>";

$facturado_mes_array = array();
$colores = array("#21618C","#5DADE2","#AED6F1","#2E86C1","#5499C7","#2471A3","#1565C0","#0D47A1","#90CAF9","#81D4FA");
$TotalFacturadoMes = 0;
$counter = 0;


//TODO: Asigna todos los resultados a el arreglo
while ($rows = mysqli_fetch_array($BSL)) {
    $LineaNegocio = $rows["LineaNegocio"];
    $Objetivo = $rows["Objetivo"];
    $Backlog = $rows["BackLog"];
    $FacturadoMes = $rows["FacturadoMes"];
    $FacturadoDia = $rows["Total"];
    $color = $colores[$counter];
    //TODO: Facturado del mes
    $facturado_mes_array[] = array(
        "name" => $LineaNegocio,
        "y" => (float) $FacturadoMes,
        "color" => $color 
    );


    //TODO: Calcula el total facturado del mes
    $TotalFacturadoMes += $FacturadoMes;

    //TODO: Aumenta el contador de los colores
    $counter++;
    
}

//TODO: Convierte los valores en JSON para los datos de la grafica
$facturado_mes_array = json_encode($facturado_mes_array);



echo "
Highcharts.createElement('link', {
    href: 'https://fonts.googleapis.com/css?family=Signika:400,700',
    rel: 'stylesheet',
    type: 'text/css'
}, null, document.getElementsByTagName('head')[0]);

// Add the background image to the container
Highcharts.wrap(Highcharts.Chart.prototype, 'getContainer', function (proceed) {
    proceed.call(this);
    this.container.style.background =
        'url(http://www.highcharts.com/samples/graphics/sand.png)';
});


Highcharts.theme = {
    chart: {
        backgroundColor: null,
        style: {
            fontFamily: 'Signika, serif'
        }
    },
    title: {
        style: {
            color: 'black',
            fontSize: '16px',
            fontWeight: 'bold'
        }
    },
    subtitle: {
        style: {
            color: 'black'
        }
    },
    tooltip: {
        borderWidth: 0
    },
    legend: {
        itemStyle: {
            fontWeight: 'bold',
            fontSize: '13px'
        }
    },
    xAxis: {
        labels: {
            style: {
                color: '#6e6e70'
            }
        }
    },
    yAxis: {
        labels: {
            style: {
                color: '#6e6e70'
            }
        }
    },
    plotOptions: {
        series: {
            shadow: true
        },
        candlestick: {
            lineColor: '#404048'
        },
        map: {
            shadow: false
        }
    },

    // Highstock specific
    navigator: {
        xAxis: {
            gridLineColor: '#D0D0D8'
        }
    },
    rangeSelector: {
        buttonTheme: {
            fill: 'white',
            stroke: '#C0C0C8',
            'stroke-width': 1,
            states: {
                select: {
                    fill: '#D0D0D8'
                }
            }
        }
    },
    scrollbar: {
        trackBorderColor: '#C0C0C8'
    },
    lang: {
        thousandsSep: ','
    },

    // General
    background2: '#E0E0E8'

};

// Apply the theme
Highcharts.setOptions(Highcharts.theme);



Highcharts.setOptions({
    
});

var chart = Highcharts.chart('container', {
 chart: {
  plotBackgroundColor: null,
  plotBorderWidth: null,
  plotShadow: false,
  type: 'pie'
 },
 title: {
  text: ''
 },
 tooltip: {
   valueDecimals: 2,
    valuePrefix: '$',
    valueSuffix: ' MXN'
 },
 plotOptions: {
  pie: {
   allowPointSelect: true,
   cursor: 'pointer',
   dataLabels: {
    enabled: true,
    format: '<b>{point.percentage:.1f} %</b>',
    distance: 10,
    style: {
        color: '#000080'
    }
   },
   borderWidth: 0,
   borderColor: null,
   showInLegend: true
  },
  series: {
            animation: {
                duration: 2000
            }
      }

 },
 series: [{
  name: 'TOTAL DEL MES',
  colorByPoint: true,
  data: $facturado_mes_array
 }],
 credits: {
  enabled: false
 }
});
";





echo "function ConvertMoney(ValorConvertido){

return Number(ValorConvertido.replace(/[^0-9\.-]+/g,''));

};

$(document).ready(function(){

                var sum = $TotalFacturadoMes;
                 sum = sum.toFixed(2);
                num = sum;
                 num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,');
                 num = num.split('').reverse().join('').replace(/^[\,]/, '');
                 sum = num;
                $('#VentasTotales').text('TOTAL:  $'+ sum);

  });


</script>";




echo "<div id='container'></div>";

    

$conexionBusinnes->close();

 ?>