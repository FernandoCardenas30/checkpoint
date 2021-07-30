<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();

 $Fecha =  $_GET['Fecha'];


$TotalFacturacionCliente = "SELECT  CONCAT('$', format(SUM(Mes),2))AS TotalFacturadoMensual,CONCAT('$', format(SUM(Dia),2))AS TotalFacturadoDia FROM tbl_facturacioncliente where Fecha = '$Fecha'";

        $TFC=mysqli_query($conexionBusinnes,$TotalFacturacionCliente) or die(mysqli_error($conexionBusinnes));

  $FacturacionCliente = "CALL sp_ConsultaFacturacionCliente('$Fecha')";
        $FC=mysqli_query($conexionBusinnes,$FacturacionCliente) or die(mysqli_error($conexionBusinnes));
        
   echo "<div class='ResponsiveTable'><table  class='tableizer-table table-striped FillAvalibleSpace' id='FacturacionCliente'>
 <thead><tr class='tableizer-firstrow'><th>No. Cliente</th><th>Cliente</th><th>Mes</th><th>Dia</th></tr></thead><tbody>";

while($rows=mysqli_fetch_array($FC))
        {
            
            $studid = $rows['Codigo'];
            $name = $rows['Cliente'];
            $address = $rows['Mes'];
            $class = $rows['Dia'];

    echo "<tr>";
    echo "<td align=center>$studid</td>";
    echo "<td align=left>$name</td>";
    echo "<td align=right>$address</td>";
    echo "<td align=right>$class</td>";
    echo "</tr>"; }

while($rows=mysqli_fetch_array($TFC))
        {
            
            $TotalFacturadoMensual = $rows['TotalFacturadoMensual'];
            $TotalFacturadoDia = $rows['TotalFacturadoDia'];
          

    echo "<tr style='font-weight:bold'>";
    echo "<td align=center>TOTALES</td>";
    echo "<td align=center></td>";
    echo "<td align=center>$TotalFacturadoMensual</td>";
    echo "<td align=left>$TotalFacturadoDia</td>";
    echo "</tr>";

        }
echo "</tbody></table></div>";
        

$conexionBusinnes->close();

 ?>
 