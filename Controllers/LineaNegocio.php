<?php

        include("Coneccion.php");
        $conexionBusinnes= Conectar();

        $Fecha =  $_GET['Fecha'];



        // $TotalLineaNegocio = "SELECT CASE WHEN (CONCAT('$', format(sum(Objetivo), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(Objetivo), 2)) END as TotalObjetivo,CASE WHEN (CONCAT('$', format(sum(Oportunidades), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(Oportunidades), 2)) END as TotalOportunidades,  CASE WHEN (CONCAT('$', format(sum(BackLog), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(BackLog), 2)) END as TotalBackLog,CASE WHEN (CONCAT('$', format(sum(FacturadoMes), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoMes), 2)) END as TotalFacturadoMes,CASE WHEN (CONCAT('$', format(sum(FacturadoDia), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoDia), 2)) END as TotalFacturadoDia FROM tbl_lineanegocio  where Fecha = '$Fecha'";
        
        $TotalLineaNegocio = "SELECT CASE WHEN (CONCAT('$', format(sum(Objetivo), 2)) IS NULL) THEN 0 ELSE
        CONCAT('$', format(sum(Objetivo), 2)) END as TotalObjetivo,
        CASE WHEN (CONCAT('$', format(sum(BackLog), 2)) IS NULL) THEN 0 ELSE
        CONCAT('$', format(sum(BackLog), 2)) END as TotalBackLog,
        CASE WHEN (CONCAT('$', format(sum(FacturadoMes), 2)) IS NULL) THEN 0 ELSE
        CONCAT('$', format(sum(FacturadoMes), 2)) END as TotalFacturadoMes,
        CASE WHEN (CONCAT('$', format(sum(FacturadoDia), 2)) IS NULL) THEN 0 ELSE
        CONCAT('$', format(sum(FacturadoDia), 2)) END as TotalFacturadoDia FROM tbl_lineanegocio  where Fecha = '$Fecha'";

        $TLN=mysqli_query($conexionBusinnes,$TotalLineaNegocio) or die(mysqli_error($conexionBusinnes));


        $LineaNegocio = "CALL sp_ConsultaLineaNegocio('$Fecha')";
        $LN=mysqli_query($conexionBusinnes,$LineaNegocio) or die(mysqli_error($conexionBusinnes));

        echo "<div class='ResponsiveTable'>
                <table class='tableizer-table table-striped FillAvalibleSpace' id='LineaNegocio'>
                        <thead>
                        <tr class='tableizer-firstrow'>
                        <th>Linea de negocio</th>
                        <th>Objetivo</th>
                        <!-- <th>Oportunidades</th> -->
                        <th>BackLog</th>
                        <th>Facturado mes</th>
                        <th>Facturado día</th>
                        </tr>
                        </thead>
                <tbody>";

        while($rows=mysqli_fetch_array($LN))
                {
                
                $LineaNegocio = $rows['LineaNegocio'];
                $Objetivo = $rows['Objetivo'];
                // $Oportunidades = $rows['Oportunidades'];
                $Backlog = $rows['BackLog'];
                $FacturadoMes = $rows['FacturadoMes'];
                $FacturadoDia = $rows['FacturadoDia'];

                echo "<tr>";
                echo "<td align=center>$LineaNegocio</td>";
                echo "<td align=left>$Objetivo</td>";
                // echo "<td align=left>$Oportunidades</td>";
                echo "<td align=right>$Backlog</td>";
                echo "<td align=right>$FacturadoMes</td>";
                echo "<td align=right>$FacturadoDia</td>";
                echo "</tr>";
        }

        while($rows=mysqli_fetch_array($TLN))
                {
                
                $TotalObjetivo = $rows['TotalObjetivo'];
                // $TotalOportunidades = $rows['TotalOportunidades'];
                $TotalBacklog = $rows['TotalBackLog'];
                $TotalFacturadoMes = $rows['TotalFacturadoMes'];
                $TotalFacturadoDia = $rows['TotalFacturadoDia'];

        echo "<tr style='font-weight:bold'>";
        echo "<td align=center>GRAN TOTAL</td>";
        echo "<td align=center>$TotalObjetivo</td>";
        // echo "<td align=center>$TotalOportunidades</td>";
        echo "<td align=left>$TotalBacklog</td>";
        echo "<td align=right>$TotalFacturadoMes</td>";
        echo "<td align=right>$TotalFacturadoDia</td>";
        echo "</tr>";

                }



        echo "</tbody></table></div>";



        $conexionBusinnes->close();

 ?>