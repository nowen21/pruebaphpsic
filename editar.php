<?php 
include_once("database.php");
$respuest=$crudxxxx->getRadicacion($_GET['id']);
echo $crudxxxx->setActulizaRadicacion($_GET['id']);
?>
<html>
<head>    
		<title>VaidrollTeam</title>
		<meta charset="UTF-8">
        <link rel="stylesheet" href="assets/css/style.css">
        <?php require 'partials/header.php' ?>
</head>
<body>
<div class="caja_popup2" id="formmodificar">
  <form method="POST" class="contenedor_popup" >
        <table style="width: 100%;">
		<tr>
            <th colspan="2">Modificar usuario</th>
        </tr>
		     <tr style="width: 20%;"> 
                <td>id</td>
                <td><?=$respuest->id?></td>
            </tr>
            <tr> 
                <td>Nombre Solicitante</td>
                <td><?=$respuest->nombre_solicitante?></td>
            </tr>
            <tr> 
                <td>Fecha</td>
                <td>
                <?= $respuest->fecha?>
                
                </td>
            </tr>
            <tr> 
                <td>Asunto</td>
                <td><?=$respuest->asunto?></td>
            </tr>
            <tr> 
                <td>Texto</td>
                <td><?=$respuest->texto_solicitud?></td>
                
            </tr>
            <tr>
				
                <td colspan="1">
				<a href="index.php">Cancelar</a>
				<input type="submit" name="btnmodificar" value="Modificar" onClick="javascript: return confirm('¿Deseas modificar a este usuario?');">
				</td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

<?php
	
	if(isset($_POST['btnmodificar']))
{    
    $codigo1 = $mostrar['id'];
    $nombre1 = $mostrar['nombre_solicitante'];
    $fecha1 = $mostrar['fecha'];
    $asunto1 = $mostrar['asunto'];
	$texto1 = $mostrar['texto_solicitud'];
      
    $querymodificar = mysqli_query($conn, "UPDATE radicaciones SET nombre_solicitante='$nombre1',fecha='$fecha1',asunto='$asunto1',texto_solicitud='$texto1' WHERE id=$codigo1");

  	echo "<script>window.location= 'index.php' </script>";
    
}
?>
	