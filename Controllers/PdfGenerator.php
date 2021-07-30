<?php



error_reporting(E_ALL);
ini_set('display_errors', '1');

require('../fpdf181/fpdf.php');

//Header del documento
class PDF extends FPDF
{
    // Cabecera de página
    function Header()
    {
        setlocale(LC_ALL,"es_ES");
        $FechaActual = strftime("%d de %B del %Y");
        
        // Logo
        $this->Image('../Bootstrap4-HTML-v1.2.3/assets/images/logos/chk2.png',10,8,33);
        // Arial bold 15
        $this->SetFont('Arial','B',15);
        // Movernos a la derecha
        $this->Cell(80);
        // Título
        $this->Cell(30,10,utf8_decode("Reporte de ventas al $FechaActual"),0,0,'C');
        // Salto de línea
        $this->Ln(20);
    }

    // Pie de página
    function Footer()
    {
        // Posición: a 1,5 cm del final
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Número de página
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }

}

//Creacion del documento pdf

        include("Coneccion.php");
        $conexionBusinnes= Conectar();
        $Fecha =  $_GET['Fecha'];
        $Contador = 0;
        $Contador2 = 0;

$pdf=new PDF();
$pdf->SetLeftMargin(14);
$pdf->setRightMargin(14);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Helvetica','B',12);
$pdf->SetFillColor(56,60,72);
$pdf->SetTextColor(245,245,245);
$pdf->Cell(37,5,"Linea de negocio",1,0,'C',true);
$pdf->Cell(25,5,"Objetivo",1,0,'C',true);
$pdf->Cell(34,5,"Oportunidades",1,0,'C',true);
$pdf->Cell(23,5,"Backlog",1,0,'C',true);
$pdf->Cell(30,5,"Fac. Mes",1,0,'C',true);
$pdf->Cell(30,5,"Fac. Dia",1,0,'C',true);
$pdf->SetTextColor(0,0,0);
$pdf->Ln();

 $TotalLineaNegocio = "SELECT CASE WHEN (CONCAT('$', format(sum(Objetivo), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(Objetivo), 2)) END as TotalObjetivo,CASE WHEN (CONCAT('$', format(sum(Oportunidades), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(Oportunidades), 2)) END as TotalOportunidades, CASE WHEN (CONCAT('$', format(sum(BackLog), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(BackLog), 2)) END as TotalBackLog,CASE WHEN (CONCAT('$', format(sum(FacturadoMes), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoMes), 2)) END as TotalFacturadoMes,CASE WHEN (CONCAT('$', format(sum(FacturadoDia), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoDia), 2)) END as TotalFacturadoDia FROM tbl_lineanegocio  where Fecha = '$Fecha'";

        $TLN=mysqli_query($conexionBusinnes,$TotalLineaNegocio) or die(mysqli_error($conexionBusinnes));



 $LineaNegocio = "SELECT LineaNegocio, CONCAT('$', format(Objetivo,2))AS Objetivo,CONCAT('$', format(Oportunidades,2))AS Oportunidades, CONCAT('$', format(BackLog,2)) AS BackLog, CONCAT('$', format(FacturadoMes,2)) AS FacturadoMes, CONCAT('$', format(FacturadoDia,2)) AS FacturadoDia FROM tbl_lineanegocio where Fecha = '$Fecha'";

        $LN=mysqli_query($conexionBusinnes,$LineaNegocio) or die(mysqli_error($conexionBusinnes));
        


 while($rows=mysqli_fetch_array($LN))
        {
            $Contador++;
            $LineaNegocio = $rows["LineaNegocio"];
            $Objetivo = $rows["Objetivo"];
            $Oportunidades = $rows["Oportunidades"];
            $BackLog = $rows["BackLog"];
            $FacturadoMes = $rows["FacturadoMes"];
            $FacturadoDia = $rows["FacturadoDia"];
            switch ($Contador) {
                case '1':
                     $pdf->SetFillColor(245,245,245);
                    break;
                case '2':
   $pdf->SetFillColor(233,233,233);
                    break;
            }
            $pdf->SetFont('Arial','',8);
            $pdf->Cell(37,5,$LineaNegocio,1,0,'C',true);
            $pdf->Cell(25,5,utf8_decode($Objetivo),1,0,'C',true);
            $pdf->Cell(34,5,$Oportunidades,1,0,'C',true);
            $pdf->Cell(23,5,$BackLog,1,0,'C',true);
            $pdf->Cell(30,5,$FacturadoMes,1,0,'C',true);
            $pdf->Cell(30,5,$FacturadoDia,1,0,'C',true);
            $pdf->Ln(); 
            if($Contador ==2){
                $Contador = 0;
            }

        }

        while($rows=mysqli_fetch_array($TLN))
        {
            
            $TotalObjetivo = $rows["TotalObjetivo"];
            $TotalOportunidades = $rows["TotalOportunidades"];
            $TotalBacklog = $rows["TotalBackLog"];
            $TotalFacturadoMes = $rows["TotalFacturadoMes"];
            $TotalFacturadoDia = $rows["TotalFacturadoDia"];

            $pdf->SetFont('Arial','B',8);
            $pdf->Cell(37,5,'GRAN TOTAL',1,0,'C',true);
            $pdf->Cell(25,5,$TotalObjetivo,1,0,'C',true);
            $pdf->Cell(34,5,$TotalOportunidades,1,0,'C',true);
            $pdf->Cell(23,5,$TotalBacklog,1,0,'C',true);
            $pdf->Cell(30,5,$TotalFacturadoMes,1,0,'C',true);
            $pdf->Cell(30,5,$TotalFacturadoDia,1,0,'C',true);

        }


$pdf->Ln(); 
$pdf->Ln(); 
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(245,245,245);
$pdf->SetFillColor(56,60,72);
$pdf->Cell(40,5,"",0,0,'C',true);
$pdf->Cell(70,5,"Importe",1,0,'C',true);
$pdf->Cell(70,5,utf8_decode("No. Órdenes"),1,0,'C',true);
$pdf->Ln();

$TotalOrdenesAbiertas = "SELECT id_TOA,CONCAT('$', format(Importe,2))AS Importe,NoOrdenes,Fecha FROM tbl_totalordenesabiertas where Fecha ='$Fecha'";
        $TOA=mysqli_query($conexionBusinnes,$TotalOrdenesAbiertas) or die(mysqli_error($conexionBusinnes));
        


 while($rows=mysqli_fetch_array($TOA))
        {
            $studid = $rows[1];
            $name = $rows[2];
            $pdf->SetFont('Arial','B',9);
            $pdf->SetTextColor(0,0,0);
            $pdf->SetFillColor(233,233,233);
            $pdf->Cell(40,5,utf8_decode('Total en órdenes abiertas'),1,0,'C',true);
            $pdf->SetFont('Arial','',8);
            $pdf->Cell(70,5,$studid,1,0,'C',true);
            $pdf->Cell(70,5,utf8_decode($name),1,0,'C',true);
            $pdf->Ln(); 
        }

$pdf->Ln(); 
$pdf->Ln(); 
$pdf->SetFont('Arial','B',11);
$pdf->SetTextColor(245,245,245);
$pdf->SetFillColor(56,60,72);
$pdf->Cell(40,5,"",1,0,'C',true);
$pdf->Cell(70,5,"Objetivo",1,0,'C',true);
$pdf->Cell(70,5,utf8_decode("Acumulado"),1,0,'C',true);
$pdf->Ln();

$TotalFacturadoEnElAño = "SELECT id_TFA, CONCAT('$', format(Objetivo,2))AS Objetivo, CONCAT('$', format(Acumulado,2))AS Acumulado FROM tbl_totalfacturadoanual  where Fecha = '$Fecha'";
        $TFA=mysqli_query($conexionBusinnes,$TotalFacturadoEnElAño) or die(mysqli_error($conexionBusinnes));

        while($rows=mysqli_fetch_array($TFA))
        {
            $studid = $rows[1];
            $name = $rows[2];
            $pdf->SetFont('Arial','B',9);
             $pdf->SetTextColor(0,0,0);
            $pdf->SetFillColor(233,233,233);
            $pdf->Cell(40,5,utf8_decode('Total facturado en el año'),1,0,'C',true);
            $pdf->SetFont('Arial','',8);
            $pdf->Cell(70,5,$studid,1,0,'C',true);
            $pdf->Cell(70,5,utf8_decode($name),1,0,'C',true);
            $pdf->Ln(); 
        }
        
$pdf->Ln(); 
$pdf->Ln(); 
$pdf->SetFont('Arial','B',11);
$pdf->SetFillColor(56,60,72);
$pdf->SetTextColor(245,245,245);
$pdf->Cell(25,5,"No. Cliente",1,0,'C',true);
$pdf->Cell(115,5,"Cliente",1,0,'C',true);
$pdf->Cell(20,5,"Mes",1,0,'C',true);
$pdf->Cell(20,5,"Dia",1,0,'C',true);
$pdf->SetTextColor(0,0,0);
$pdf->Ln();

$TotalFacturacionCliente = "SELECT  CONCAT('$', format(SUM(Mes),2))AS TotalFacturadoMensual,CONCAT('$', format(SUM(Dia),2))AS TotalFacturadoDia FROM tbl_facturacioncliente where Fecha = '$Fecha'";

        $TFC=mysqli_query($conexionBusinnes,$TotalFacturacionCliente) or die(mysqli_error($conexionBusinnes));


        $FacturacionCliente = "CALL sp_ConsultaFacturacionCliente('$Fecha')";
        $FC=mysqli_query($conexionBusinnes,$FacturacionCliente) or die(mysqli_error($conexionBusinnes));


while($rows=mysqli_fetch_array($FC))
        {
             
            $Contador2++;
            $studid = $rows[0];
            $name = $rows[1];
            $address = $rows[2];
            $class = $rows[3];
            $phone = $rows[4];
            switch ($Contador2) {
                case '1':
                     $pdf->SetFillColor(245,245,245);
                    break;
                
                case '2':
   $pdf->SetFillColor(233,233,233);
                    break;
            }
            $pdf->SetFont('Arial','',8);
            $pdf->Cell(25,5,$studid,1,0,'C',true);
            $pdf->Cell(115,5,utf8_decode($name),1,0,'C',true);
            $pdf->Cell(20,5,$address,1,0,'R',true);
            $pdf->Cell(20,5,$class,1,0,'R',true);
            $pdf->Ln(); 
            if($Contador2 ==2){
                $Contador2 = 0;
            }
}

while($rows=mysqli_fetch_array($TFC))
        {
            
            $TotalFacturadoMensual = $rows[0];
            $TotalFacturadoDia = $rows[1];
          

            $pdf->SetFont('Arial','B',8);
            $pdf->Cell(25,5,'TOTALES',1,0,'C',true);
            $pdf->Cell(115,5,'',1,0,'C',true);
            $pdf->Cell(20,5,$TotalFacturadoMensual,1,0,'R',true);
            $pdf->Cell(20,5,$TotalFacturadoDia,1,0,'R',true);

        }

        

$conexionBusinnes->close();
      
$pdf->Output();

?>