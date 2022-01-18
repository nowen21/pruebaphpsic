<?php include_once("database.php");
$resultxx = $crudxxxx->setRadicacion();
?>
<html>

<head>
    <?php require 'partials/header.php' ?>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="caja_popup" id="formregistrar" align="center">
        <form action="agregar.php" class="contenedor_popup" method="POST">
            <table>
                <tr>
                    <th colspan="2">Nueva radicación</th>
                </tr>
                <tr>
                    <td>Nombre Solicitante</td>
                    <td>
                        <select name="nombre_solicitante">
                            <option value="0">Seleccione:</option>
                            <?php
                            foreach ($resultxx as $key => $value) {
                                ?>
                                <option  value="<?=$value['id'] ?>"><?=$value['nombre'] ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </td>

                </tr>
                <tr>
                    <td>Fecha</td>
                    <td><input type="date" name="fecha" required></td>
                </tr>
                <tr>
                    <td>Asunto</td>
                    <td><input type="text" name="asunto" required></td>
                </tr>
                <tr>
                    <td>Texto</td>
                    <td><input type="text" name="texto" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" class="button_active" onclick="location.href='index.php';" value="Volver" />
                        <input type="submit" name="btnregistrar" value="Registrar" onClick="javascript: return confirm('¿Deseas registrar a este usuario?');">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>