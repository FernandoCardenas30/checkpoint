<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();


$FacturacionSoriana = "CALL sp_ConsultaFacturacionSoriana()";
$FSA=mysqli_query($conexionBusinnes,$FacturacionSoriana) or die(mysqli_error($conexionBusinnes));
$dataFSA =mysqli_fetch_all($FSA,MYSQLI_ASSOC);



echo json_encode($dataFSA);

$conexionBusinnes->close();

 ?>