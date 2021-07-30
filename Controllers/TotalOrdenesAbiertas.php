<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();


  $Fecha =  $_GET['Fecha'];

$TotaleOrdenesAbiertas = "CALL sp_ConsultaTotalOrdenesAbiertas('$Fecha')";
$TOA=mysqli_query($conexionBusinnes,$TotaleOrdenesAbiertas) or die(mysqli_error($conexionBusinnes));



echo "<div class='ResponsiveTable'><table class='tableizer-table table-striped FillAvalibleSpace' id='OrdenesAbiertas'><thead><tr class='tableizer-firstrow'><th colspan='2'></th><th>Importe</th><th>No. órdenes</th></tr></thead><tbody>";


while($rows=mysqli_fetch_array($TOA))
        {
            
            $Importe = $rows['Importe'];
            $NOordenes = $rows['NoOrdenes'];
         

    echo "<tr style='font-weight:bold'>";
    echo "<td colspan='2'>Total en órdenes abiertas</td>";
    echo "<td align=center>$Importe</td>";
    echo "<td align=left>$NOordenes</td>";
    echo "</tr>";

        }



echo "</tbody></table></div>";


$conexionBusinnes->close();

 ?>