<?php 

include("Coneccion.php");
$conexionBusinnes = Conectar();


if(isset($_REQUEST["Send"])){



$ID = $_REQUEST["ID"];
$Tatoo=$_REQUEST["Tatoo"];
$SN=$_REQUEST["SN"];
$BM=$_REQUEST["BM"];
$LDOC=$_REQUEST["LDOC"];
$NDOC=$_REQUEST["NDOC"];
$CI=$_REQUEST["CI"];
$DR=$_REQUEST["DR"];
$Responsable=$_REQUEST["Responsable"];
$UP=$_REQUEST["UP"];
$WZ=$_REQUEST["WZ"];
$Description=$_REQUEST["Description"];
$Comments=$_REQUEST["Comments"];

$query = "CALL sp_InsertaEquipos('$ID','$Tatoo','$SN','$BM','$LDOC','$NDOC','$CI','$DR','$Responsable','$UP','$WZ','$Description','$Comments')";
$cs=mysqli_query($conexionBusinnes,$query) or die(mysqli_error($conexionBusinnes));

if(!$cs){

 echo "<script>alert('Estamos en reparación de nuestro sitio lamentamos las molestias')</script>";
}

else{
echo "<script>alert('Registro Completado')</script>";
	header('Location: ../AltaEquipo.html');
}


}
else{
echo "<script>alert('No se requiere operación de insertado de datos')</script>";
	
}


 ?>