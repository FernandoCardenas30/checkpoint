<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();


$FacturacionCasaley= "CALL sp_ConsultaFacturacionCasaley()";
$FCL=mysqli_query($conexionBusinnes,$FacturacionCasaley) or die(mysqli_error($conexionBusinnes));
$dataFCL =mysqli_fetch_all($FCL,MYSQLI_ASSOC);


echo json_encode($dataFCL);


$conexionBusinnes->close();
 ?>