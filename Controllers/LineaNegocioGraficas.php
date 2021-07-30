<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();

  $Fecha =  $_GET['Fecha'];


 $BussinessLine = "SELECT LineaNegocio, CONCAT('$', format(Objetivo,2))AS Objetivo, CONCAT('$', format(BackLog,2)) AS BackLog, CONCAT('$', format(FacturadoMes,2)) AS FacturadoMes, CONCAT('$', format(FacturadoDia,2)) AS FacturadoDia FROM tbl_lineanegocio where Fecha = '$Fecha'";

        $BSL=mysqli_query($conexionBusinnes,$BussinessLine) or die(mysqli_error($conexionBusinnes));



echo "<script>

var FS = [];
var ALS = [];
var MAS = [];
var OTHERS = [];";
        
        $MAS = array();
        $ALS = array();
        $FS = array();
        $OTHERS = array();
        $Counter = 0;
    
while($rows=mysqli_fetch_array($BSL))
        {
            
            $LineaNegocio = $rows[0];
            $Objetivo = $rows[1];
            $Backlog = $rows[2];
            $FacturadoMes = $rows[3];
            $FacturadoDia = $rows[4];

			$FinalObjective = str_replace("$","",$Objetivo);
        	$FinalObjective =	str_replace(",","",$FinalObjective);

			$FinalFacMes = str_replace("$","",$FacturadoMes);
        	$FinalFacMes =	str_replace(",","",$FinalFacMes);
        	

   switch ($LineaNegocio) {
   	case 'MAS':
   		$FS[] = $FinalObjective;
   		$FS[] = $FinalFacMes;
   		break;
   		case 'ALS':
   		$ALS[] = $FinalObjective;
   		$ALS[] = $FinalFacMes;
   		break;
   		case 'FS':
   		$MAS[] = $FinalObjective;
   		$MAS[] = $FinalFacMes;
   		break;
   		case 'OTHERS':
   		$OTHERS[] = $FinalObjective;
   		$OTHERS[] = $FinalFacMes;
   		break;
   	
   };

   $Counter++;
}

        	  
        
        
          
            
 		


echo "Highcharts.chart('container', { chart: { plotBackgroundColor: null, plotBorderWidth: null, plotShadow: false, type: 'pie', height: 300, }, title: { text: '' }, tooltip: { pointFormat: '{series.name}: <b>{point.y} MXN</b>' }, plotOptions: { pie: { allowPointSelect: true, cursor: 'pointer', dataLabels: { enabled: true, format: '<b>{point.percentage:.1f} %</b>', distance: 10, }, borderWidth: 0, borderColor: null, showInLegend: true } }, series: [{ name: 'Total', colorByPoint: true, data: [ { name: 'MAS', y: $MAS[1], color: '#21618C' }, { name: 'ALS', y: $ALS[1], color: '#5DADE2' }, { name: 'FS', y: $FS[1], color: '#AED6F1' }, { name: 'OTHERS', y: $OTHERS[1], color: '#2E86C1' }, ], }], credits: { enabled: false } });";



echo "Highcharts.chart('container2', { chart: { type: 'bar' }, title: { text: '' }, subtitle: { text: null }, xAxis: { categories: ['MAS', 'ALS', 'FS', 'OTHERS'], title: { text: null } }, yAxis: { min: 0, title: { text: null, align: 'high' }, labels: { overflow: 'justify' } }, tooltip: { valueSuffix: ' millions' }, plotOptions: { bar: { dataLabels: { enabled: true } } }, legend: { layout: 'vertical', align: 'right', verticalAlign: 'top', x: -40, y: 80, floating: true, borderWidth: 1, backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'), shadow: true }, credits: { enabled: false }, series: [{ name: 'Objetivo', data: [$MAS[0], $ALS[0],$FS[0] ,OTHERS[0]] },{ name: 'Facturado Mes', data:[$MAS[1], $ALS[1],$FS[1], $OTHERS[1]] }] });";

echo "function ConvertMoney(ValorConvertido){

return Number(ValorConvertido.replace(/[^0-9\.-]+/g,''));

};


</script>";





 $TotalLineaNegocio = "SELECT CASE WHEN (CONCAT('$', format(sum(Objetivo), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(Objetivo), 2)) END as TotalObjetivo,CASE WHEN (CONCAT('$', format(sum(BackLog), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(BackLog), 2)) END as TotalBackLog,CASE WHEN (CONCAT('$', format(sum(FacturadoMes), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoMes), 2)) END as TotalFacturadoMes,CASE WHEN (CONCAT('$', format(sum(FacturadoDia), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoDia), 2)) END as TotalFacturadoDia FROM tbl_lineanegocio  where Fecha = '$Fecha'";

        $TLN=mysqli_query($conexionBusinnes,$TotalLineaNegocio) or die(mysqli_error($conexionBusinnes));


$LineaNegocio = "CALL sp_ConsultaLineaNegocio('$Fecha')";
$LN=mysqli_query($conexionBusinnes,$LineaNegocio) or die(mysqli_error($conexionBusinnes));

echo "  <div class='row'>
            <div class='col-md-6'><div class='ResponsiveTable'>
   <table class='tableizer-table table-striped FillAvalibleSpace' id='LineaNegocio'>
        <thead><tr class='tableizer-firstrow'><th>Linea de negocio</th><th>Objetivo</th><th>BackLog</th><th>Facturado mes</th><th>Facturado día</th></tr></thead><tbody>";

while($rows=mysqli_fetch_array($LN))
        {
            
            $LineaNegocio = $rows[0];
            $Objetivo = $rows[1];
            $Backlog = $rows[2];
            $FacturadoMes = $rows[3];
            $FacturadoDia = $rows[4];

    echo "<tr>";
    echo "<td align=center>$LineaNegocio</td>";
    echo "<td align=left>$Objetivo</td>";
    echo "<td align=right>$Backlog</td>";
    echo "<td align=right>$FacturadoMes</td>";
    echo "<td align=right>$FacturadoDia</td>";
    echo "</tr>";
}

while($rows=mysqli_fetch_array($TLN))
        {
            
            $TotalObjetivo = $rows[0];
            $TotalBacklog = $rows[1];
            $TotalFacturadoMes = $rows[2];
            $TotalFacturadoDia = $rows[3];

    echo "<tr style='font-weight:bold'>";
    echo "<td align=center>GRAN TOTAL</td>";
    echo "<td align=center>$TotalObjetivo</td>";
    echo "<td align=left>$TotalBacklog</td>";
    echo "<td align=right>$TotalFacturadoMes</td>";
    echo "<td align=right>$TotalFacturadoDia</td>";
    echo "</tr>";

        }

echo "</tbody></table></div>";
    
echo "</div>
    <div class='col-md-6'>
     <div class='row contenedor-barras'>
        <div class='col-md-12' style='text-align: -webkit-center'>
            <div id='container' style='height: 400px; margin: 0 auto'></div>
        </div>
    </div>
</div>
    </div>

    <div class='row'>
        <div class='col-md-12'>
            <div style='height: 400px; margin: 0 auto' id='container2'></div>
        </div>
    
    </div>";

$conexionBusinnes->close();

 ?>