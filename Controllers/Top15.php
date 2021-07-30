<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

include("Coneccion.php");
$conexionBusinnes= Conectar();

    $Fecha = mysqli_fetch_array(ConsultaUltimaFecha());
    
$TotalesVentasMensuales = "SELECT SUM(Enero+Febrero+Marzo+Abril+Mayo+Junio+Julio+Agosto+Septiembre+Octubre+Noviembre+Diciembre)AS TotalVentasMensuales from tbl_ventasmensuales where Fecha = '$Fecha[0]'";

$TVM=mysqli_query($conexionBusinnes,$TotalesVentasMensuales) or die(mysqli_error($conexionBusinnes));

         $TOP15 = "call sp_consultatop15('$Fecha[0]')";

        $T15=mysqli_query($conexionBusinnes,$TOP15) or die(mysqli_error($conexionBusinnes));


$rows=mysqli_fetch_array($TVM);

$VentasMensualesTotales = $rows['TotalVentasMensuales'];

$Counter = 0;
$Porcentajes = array();





echo "

<script>



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
                color: 'black'
            }
        }
    },
    yAxis: {
        labels: {
            style: {
                color: 'black'
            }
        }
    },
    plotOptions: {
        series: {
            shadow: false,
             animation: {
                duration: 2000,
                easing: 'easeOutBounce'
            }
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



Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: null
    },
    subtitle: {
        text: null
    },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Ventas (millones)'
        }
    },
    legend: {
        enabled: false
    },
    //Formato money a tooltips
    tooltip: {
    valueDecimals: 2,
    valuePrefix: '$',
    valueSuffix: ' MXN'
    },
    series: [{
        name: 'Ventas',
        keys: ['name', 'y','id'],
        data: [";
        while($rows=mysqli_fetch_array($T15))
        {
       
            $CardName = $rows['CardName'];
            $Totales =    $rows['VentasTotales'];

    $Porcentajes[] = number_format($Totales*100/$VentasMensualesTotales, 2, '.', '');


          echo"['$CardName',$Totales,'$Counter'],";
          
          $Counter++;
        }


      echo"],
        dataLabels: {
            enabled: false,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }],annotations: [{
        labels: [";

for ($i = 0; $i < $Counter; $i++) {
         echo "{
            point: '$i',
            text: '$Porcentajes[$i] %'
        },";
}
       
echo "],
         labelOptions: {
           backgroundColor: 'none',
            verticalAlign: 'left',
            borderWidth: 0,
            style: {
                color: '#000080'
            }
        }
    }],

        credits: {
        enabled: false
    },
   
});



$(document).ready(function(){
                
                var sum = $VentasMensualesTotales;
                 sum = sum.toFixed(2);
                num = sum;
                 num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,');
                 num = num.split('').reverse().join('').replace(/^[\,]/, '');
                 sum = num;
                $('#VentasTotales').text('TOTAL:  $'+ sum);
    });


</script>";

echo "<div id='container'></div>";

 ?>