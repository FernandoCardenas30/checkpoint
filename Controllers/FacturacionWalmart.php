<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();


$FacturacionWalmart = "CALL sp_ConsultaFacturacionWalmart()";
$FWA=mysqli_query($conexionBusinnes,$FacturacionWalmart) or die(mysqli_error($conexionBusinnes));
$dataFWA =mysqli_fetch_all($FWA,MYSQLI_ASSOC);


echo json_encode($dataFWA);

$conexionBusinnes->close();
 ?>