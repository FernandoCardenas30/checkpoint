<?php  

function Conectar(){
    // $user="developer";
    // $password="ITsistemas0313";
    // $server="localhost:3306";
    // $db="dbCloudSphere";
    /*------------------------------------------------------------*/
    // $user="usrDbTest";
    // $password="pasDbTest";
    // $server="cloudsphere.com.mx";
    // $db="dbCloudSphere";

    $user="root";
    $password="ITsistemas0313";
    $server="localhost:3306";
    $db="dbDesign";
	$con = mysqli_connect($server, $user, $password, $db);

if (!$con) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    echo "Información del host: " . mysqli_get_host_info($con) . PHP_EOL;
    exit;
}




return $con;

}


function ConsultaUltimaFecha() {
  $Query = "SELECT MAX(Fecha) as Fecha from dbdesign.tbl_lineanegocio";
   $Result=mysqli_query(Conectar(),$Query) or die(mysqli_error($conexionBusinnes));
   return $Result;
}

?>