<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

include("Coneccion.php");
$conexionBusinnes= Conectar();

$Fecha = mysqli_fetch_array(ConsultaUltimaFecha());

$TVM = "";
$Cadena = "";
$Counter = 1;
$Totales = 0;


echo "

<script>

Highcharts.createElement('link', {
    href: 'https://fonts.googleapis.com/css?family=Signika:400,700',
    rel: 'stylesheet',
    type: 'text/css'
}, null, document.getElementsByTagName('head')[0]);


Highcharts.wrap(Highcharts.Chart.prototype, 'getContainer', function (proceed) {
    proceed.call(this);
    this.container.style.background =
       'url(http://www.highcharts.com/samples/graphics/sand.png)';
});


Highcharts.theme = {
    colors: ['#b2e7f7','#99dff5','#7fd7f3', '#66cff0', '#4cc7ee', '#32bfeb', '#19b7e9',
       '#00b0e7', '#009ecf', '#008cb8', '#007ba1', '#00698a', '#aaeeee'],
    chart: {
        backgroundColor: null,
        style: {
            fontFamily: 'Signika, serif'
        },
           type: 'bar'
    },
    lang: {
        thousandsSep: ','
    },
    title: {
        style: {
            color: 'black',
            fontSize: '16px',
            fontWeight: 'bold'
        },
        text:null
    },
    subtitle: {
        style: {
            color: 'black'
        }
    },
    tooltip: {
    borderWidth: 0,
    valueDecimals: 2,
    valuePrefix: '$',
    valueSuffix: ' MXN'
    },
    legend: {
        itemStyle: {
            fontWeight: 'bold',
            fontSize: '13px'
        },
        reversed:true
    },
    xAxis: {
        labels: {
            style: {
                color: '#000000'
            }
        },";

        $TotalesVentasMensuales = "SELECT SUM(Enero+Febrero+Marzo+Abril+Mayo+Junio+Julio+Agosto+Septiembre+Octubre+Noviembre+Diciembre)AS TotalVentasMensuales from tbl_ventasmensuales where Fecha = '$Fecha[0]'";

$TVM=mysqli_query($conexionBusinnes,$TotalesVentasMensuales) or die(mysqli_error($conexionBusinnes));

$rows=mysqli_fetch_array($TVM);
$Totales = $rows['TotalVentasMensuales'];


        $Categories = "select Nombre from tbl_ventasmensuales where Fecha = '$Fecha[0]'";
         $CT=mysqli_query($conexionBusinnes,$Categories) or die(mysqli_error($conexionBusinnes));

          echo "categories: [";
         while($rows = mysqli_fetch_array($CT))
         {
            $Nombre = $rows['Nombre'];
            echo "'$Nombre',";

        }


      echo "]";

    echo  "},
    yAxis: {
       min: 0,
        title: {
            text: 'Total de ventas'
        },
           labels: {
            style: {
                color: '#000000'
            }
        },  stackLabels: {
            style: {
                color: 'black'
            },
            enabled: false,
            formatter: function () {
                return '$' + Highcharts.numberFormat(this.total,0) + ' MXN'
            }
        }
    },
    plotOptions: {
        series: {
            shadow: false,
             animation: {
                duration: 2000,
                easing: 'easeOutBounce'
            },
             stacking: 'normal',
               events: {
             hide: function () {
                   var sum = 0;
                   var TotalPorVendedor = [];
                  var all = chart.series[0].data;
                $.each(all, function( index, value ) {
                sum += Number(value.total);  
                TotalPorVendedor.push(value.total);
                });

                sum = sum.toFixed(2)
                num = sum;



 


               num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,');
                num = num.split('').reverse().join('').replace(/^[\,]/, '');
                 sum = num;

                $('#VentasTotales').text('TOTAL:  $'+ sum);
               
              
            },

              show: function () {
                var sum = 0;
                  var all = chart.series[0].data;
                $.each(all, function( index, value ) {
                sum += Number(value.total);  
                });

                sum = sum.toFixed(2);
                num = sum;




               num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,');
                num = num.split('').reverse().join('').replace(/^[\,]/, '');
                 sum = num;
                $('#VentasTotales').text('TOTAL:  $'+ sum);

              



            }
        }

        },

        candlestick: {
            lineColor: '#404048'
        },
        map: {
            shadow: false
        }
    },

    
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
 
    
    background2: '#E0E0E8'

};


Highcharts.setOptions(Highcharts.theme);


var chart = new Highcharts.chart('container', {

        series: [";

    $mesDiciembre = "select Nombre,Diciembre from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MDIC=mysqli_query($conexionBusinnes,$mesDiciembre) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Diciembre',
    data: [";

while($rows=mysqli_fetch_array($MDIC))
        {
           $Nombre = $rows['Nombre'];
            $Diciembre =  $rows['Diciembre'];

          
                   
                   echo "{ y: $Diciembre, id: '$Nombre' },";
                     
        }



            echo "]},"; 

        $mesNoviembre = "select Nombre,Noviembre from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MNOV=mysqli_query($conexionBusinnes,$mesNoviembre) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Noviembre',
    data: [";

while($rows=mysqli_fetch_array($MNOV))
        {
           $Nombre = $rows['Nombre'];
            $Noviembre =  $rows['Noviembre'];

          
                   
                   echo "$Noviembre,";
                     
        }



            echo "]},"; 

$mesOctubre = "select Nombre,Octubre from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MOCT=mysqli_query($conexionBusinnes,$mesOctubre) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Octubre',
    data: [";

while($rows=mysqli_fetch_array($MOCT))
        {
           $Nombre = $rows['Nombre'];
            $Octubre =  $rows['Octubre'];

          
                   
                   echo "$Octubre,";
                     
        }



            echo "]},"; 

$mesSeptiembre = "select Nombre,Septiembre from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MSEP=mysqli_query($conexionBusinnes,$mesSeptiembre) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Septiembre',
    data: [";

while($rows=mysqli_fetch_array($MSEP))
        {
           $Nombre = $rows['Nombre'];
            $Septiembre =  $rows['Septiembre'];

          
                   
                   echo "$Septiembre,";
                     
        }



            echo "]},";  

 $mesAgosto = "select Nombre,Agosto from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MAGO=mysqli_query($conexionBusinnes,$mesAgosto) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Agosto',
    data: [";

while($rows=mysqli_fetch_array($MAGO))
        {
           $Nombre = $rows['Nombre'];
            $Agosto =  $rows['Agosto'];

          
                   
                   echo "$Agosto,";
                     
        }



            echo "]},";  


 $mesjulio = "select Nombre,Julio from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MJUL=mysqli_query($conexionBusinnes,$mesjulio) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Julio',
    data: [";

while($rows=mysqli_fetch_array($MJUL))
        {
           $Nombre = $rows['Nombre'];
            $Julio =  $rows['Julio'];

          
                   
                   echo "$Julio,";
                     
        }



            echo "]},";  


 $mesjunio = "select Nombre,Junio from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MJ=mysqli_query($conexionBusinnes,$mesjunio) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Junio',
    data: [";

while($rows=mysqli_fetch_array($MJ))
        {
           $Nombre = $rows['Nombre'];
            $Junio =  $rows['Junio'];

          
                   
                   echo "$Junio,";
                     
        }



            echo "]},";  



 $mesmayo = "select Nombre,Mayo from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MMAY=mysqli_query($conexionBusinnes,$mesmayo) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Mayo',
    data: [";

while($rows=mysqli_fetch_array($MMAY))
        {
           $Nombre = $rows['Nombre'];
            $Mayo =  $rows['Mayo'];

          
                   
                   echo "$Mayo,";
                     
        }



            echo "]},";  


         $mesabril = "select Nombre,Abril from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MA=mysqli_query($conexionBusinnes,$mesabril) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Abril',
    data: [";

while($rows=mysqli_fetch_array($MA))
        {
           $Nombre = $rows['Nombre'];
            $Abril =  $rows['Abril'];

          
                   
                   echo "$Abril,";
                     
        }



            echo "]},";  


      $mesmarzo = "select Nombre,Marzo from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MM=mysqli_query($conexionBusinnes,$mesmarzo) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Marzo',
    data: [";

while($rows=mysqli_fetch_array($MM))
        {
           $Nombre = $rows['Nombre'];
            $Marzo =  $rows['Marzo'];

          
                   
                   echo "$Marzo,";
                     
        }



            echo "]},";  

 $mesfebrero = "select Nombre,Febrero from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $MF=mysqli_query($conexionBusinnes,$mesfebrero) or die(mysqli_error($conexionBusinnes));

  echo " { 
    name: 'Febrero',
    data: [";

while($rows=mysqli_fetch_array($MF))
        {
           $Nombre = $rows['Nombre'];
            $Febrero =  $rows['Febrero'];

          
                   
                   echo "$Febrero,";
                     
        }



            echo "]},";

       $mesenero = "select Nombre,Enero from tbl_ventasmensuales where Fecha  = '$Fecha[0]'";

        $ME=mysqli_query($conexionBusinnes,$mesenero) or die(mysqli_error($conexionBusinnes));    


 echo " { 
    name: 'Enero',
    data: [";

while($rows=mysqli_fetch_array($ME))
        {
           $Nombre = $rows['Nombre'];
            $Enero =  $rows['Enero'];

          
                   
                   echo "$Enero,";
                     
        }

            echo "]}],

            annotations: [{
             labels: [";


$Porcentajes = "call sp_ConsultaVentasMensuales('$Fecha[0]')";
$PC = mysqli_query($conexionBusinnes,$Porcentajes) or die(mysqli_error($conexionBusinnes));

 while($rows = mysqli_fetch_array($PC))
         {

        $Name = $rows['Nombre'];
            
    //    $TotalPorcento = $rows['TotalPorcentaje'];
    //    $Porcentaje = number_format($TotalPorcento*100/$Totales, 2, '.', '');
    //    text: '$Porcentaje %'
         echo "{
            point: '$Name'
            
        },";
     }
       
    echo "],
         labelOptions: {
           backgroundColor: 'none',
          distance:1,
            borderWidth: 0,
            style: {
                color: '#000000'
            }
        }
    }],

    credits: {
        enabled: false
    }
});



$(document).ready(function(){
                
                var sum = $Totales;
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