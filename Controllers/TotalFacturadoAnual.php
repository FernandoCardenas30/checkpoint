<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();

  $Fecha =  $_GET['Fecha'];

$TotalFacturadoAnual = "CALL sp_ConsultaTotalFacturadoAnual('$Fecha')";
$TFA=mysqli_query($conexionBusinnes,$TotalFacturadoAnual) or die(mysqli_error($conexionBusinnes));


echo "<div class='ResponsiveTable'><table  class='tableizer-table table-striped FillAvalibleSpace' id='TotalFacturadoAnual'>
       <thead><tr class='tableizer-firstrow'><th></th><th></th><th>Objetivo</th><th> Acumulado</th></tr></thead><tbody>";


while($rows=mysqli_fetch_array($TFA))
        {
            
            $Objetivo = $rows['Objetivo'];
            $Acumulado = $rows['Acumulado'];
         

    echo "<tr style='font-weight:bold'>";
    echo "<td colspan='2'>Total facturado en el año</td>";
    echo "<td align=center>$Objetivo</td>";
    echo "<td align=left>$Acumulado</td>";
    echo "</tr>";

        }



echo "</tbody></table></div>";


$conexionBusinnes->close();

 ?>