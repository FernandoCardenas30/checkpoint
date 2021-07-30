<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

include "Coneccion.php";
$conexionBusinnes = Conectar();

 $Fecha = mysqli_fetch_array(ConsultaUltimaFecha());


$BussinessLine = "SELECT LineaNegocio, CONCAT('$', format(Objetivo,2))AS Objetivo, CONCAT('$', format(BackLog,2)) AS BackLog, CONCAT('$', format(FacturadoMes,2)) AS FacturadoMes, CONCAT('$', format(FacturadoDia,2)) AS FacturadoDia FROM tbl_lineanegocio where Fecha = '$Fecha[0]'";

($BSL = mysqli_query($conexionBusinnes, $BussinessLine)) or
    die(mysqli_error($conexionBusinnes));

echo "<script>";

$TotalObjetivo = 0;
$TotalFacturadoMes = 0;

//TODO: Contendra todos los elementos de la consulta
$objetivo_mes_array = array();
$facturado_mes_array = array();
$categories = array();
$annotatios = array();

//TODO: Asigna todos los resultados a el arreglo
while ($rows = mysqli_fetch_array($BSL)) {
    $LineaNegocio = $rows["LineaNegocio"];
    $Objetivo = $rows["Objetivo"];
    $Backlog = $rows["BackLog"];
    $FacturadoMes = $rows["FacturadoMes"];
    $FacturadoDia = $rows["FacturadoDia"];

    //TODO: Objetivo del mes
    $FinalObjective = str_replace("$", "", $Objetivo);
    $FinalObjective = str_replace(",", "", $FinalObjective);
    $FinalObjective = TRIM($FinalObjective);

    //TODO: Facturado del mes
    $FinalFacMes = str_replace("$", "", $FacturadoMes);
    $FinalFacMes = str_replace(",", "", $FinalFacMes);
    $FinalFacMes = TRIM($FinalFacMes);

    //TODO: Objetivo
    $objetivo_mes_array[] = array(
        "name" => $LineaNegocio,
        "y" => (float) $FinalObjective,
        "id" => $LineaNegocio . "_objetivo"
    );
    //TODO: Facturado del mes
    $facturado_mes_array[] = array(
        "name" => $LineaNegocio,
        "y" => (float) $FinalFacMes,
        "id" => $LineaNegocio
    );

    //TODO: Categorias
    $categories[] = array($LineaNegocio);

//TODO: Generar anotaciones de facturado del mes
    if((float)$FinalFacMes > 0 && (float)$FinalObjective > 0)
    {
      $texto =   number_format($FinalFacMes*100/$FinalObjective,2,'.','');

        $annotatios[] = array(
            "point" => $LineaNegocio,
            "format" => (string)$texto . "%"
        );

    }
    else
    {
        $annotatios[] = array(
            "point" => $LineaNegocio,
            "format" => "0%"
        );
    }

    //TODO: Calcula el total facturado del mes y el total objetivo
    $TotalObjetivo += $FinalObjective;
    $TotalFacturadoMes += $FinalFacMes;
    
}

//TODO: Generar anotaciones de objetivo del mes por separado
foreach ($objetivo_mes_array as &$objetivo) {
        $annotatios[] = array(
            "point" => $objetivo["id"],
            "format" => "100%"
        );
}


//TODO: Convierte los valores en JSON para los datos de la grafica
$objetivo_mes_array = json_encode($objetivo_mes_array);
$facturado_mes_array = json_encode($facturado_mes_array);
$categories = json_encode($categories);
$annotatios = json_encode($annotatios);

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
        },


bar: {
   dataLabels: {
    enabled: false,
      format: '<b>$ {point.y:,.1f} MXN</b>',
   }
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



Highcharts.chart('container2', {
 chart: {
  type: 'bar',
  events: {
    redraw: function() {
        this.annotations.forEach(function(annotation) {
            if (annotation.options.type === 'measure') {
                annotation.update();
            }
        });
    }
  }
 },
 title: {
  text: ''
 },
 subtitle: {
  text: null
 },
 xAxis: {
  categories: $categories,
  title: {
   text: null
  }
 },
 yAxis: {
  min: 0,
  title: {
   text: null,
   align: 'high'
  },
  labels: {
   overflow: 'justify'
  }
 },
 tooltip: {
   valueDecimals: 2,
    valuePrefix: '$',
    valueSuffix: ' MXN'
 },
 legend: {
  layout: 'vertical',
  align: 'right',
  verticalAlign: 'top',
  x: -40,
  y: 80,
  floating: true,
  borderWidth: 1,
  backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
  shadow: true
 },
 credits: {
  enabled: false
 },
 series: [{
  name: 'objetivo del mes',
  data: $objetivo_mes_array
 }, {
   name: 'Facturado del mes',
  data: $facturado_mes_array
 }],
 responsive: {
    rules: [{
        condition: {
            maxWidth: 500
        },
        chartOptions: {
            legend: {
                align: 'center',
                verticalAlign: 'bottom',
                layout: 'horizontal'
            }
        }
    }]
},
 annotations: [{
      labels: $annotatios,
      crop: true,
      allowOverlap:true,
       labelOptions: {
         backgroundColor: 'none',
           distance:1,
          borderWidth: 0,
          type: 'measure',
          style: {
              color: '#000080'
          }
      }
  }]
 
});";

echo "function ConvertMoney(ValorConvertido){

return Number(ValorConvertido.replace(/[^0-9\.-]+/g,''));

};


$(document).ready(function(){

                var TO = $TotalObjetivo;
                 TO = TO.toFixed(2);
                num = TO;
                 num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,');
                 num = num.split('').reverse().join('').replace(/^[\,]/, '');
                $('#TotalObjetivo').text('OBJETIVO AL MES:  $'+ num);

                 var TFM = $TotalFacturadoMes;
                 TFM = TFM.toFixed(2);
                num = TFM;
                 num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,');
                 num = num.split('').reverse().join('').replace(/^[\,]/, '');
                $('#TotalFacMes').text('FACTURADO AL MES:  $'+ num);

  });


</script>";

echo "<div id='container2'></div>";

$conexionBusinnes->close();

?>
