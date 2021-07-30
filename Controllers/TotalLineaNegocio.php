<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();


  $Fecha =  $_GET['Fecha'];

$TotalesLineaNegocio = "CALL sp_ConsultaTotalesLineaNegocio('$Fecha')";
$TLN=mysqli_query($conexionBusinnes,$TotalesLineaNegocio) or die(mysqli_error($conexionBusinnes));
$dataTLN =mysqli_fetch_all($TLN,MYSQLI_ASSOC);


echo json_encode($dataTLN);

$conexionBusinnes->close();

 ?>