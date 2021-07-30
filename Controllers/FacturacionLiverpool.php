<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();


$FacturacionLiverpool = "CALL sp_ConsultaFacturacionLiverpool()";
$FLI=mysqli_query($conexionBusinnes,$FacturacionLiverpool) or die(mysqli_error($conexionBusinnes));
$dataFLI =mysqli_fetch_all($FLI,MYSQLI_ASSOC);



echo json_encode($dataFLI);

$conexionBusinnes->close();

 ?>