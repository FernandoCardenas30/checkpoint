<?php

include("Coneccion.php");
$conexionBusinnes= Conectar();


$query = "CALL sp_ConsultaGraficasUbicacion()";
$cs=mysqli_query($conexionBusinnes,$query) or die(mysqli_error($conexionBusinnes));
$data=mysqli_fetch_assoc($cs);
if($data["UP"] > 0){

echo $data["UP"];

}

else{ 
echo 0;
}
 
 ?>
 
