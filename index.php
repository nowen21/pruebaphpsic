<?php
require 'database.php';
$user = $crudxxxx->getUsurio();
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Bienvenido</title>
  <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
  <?php require 'partials/header.php' ?>
  <?php if (!empty($user)) : ?>
    <br>
    <h6 align="center">Bienvenido, Se ha logueado con éxito a la plataforma</h6>
    <table align="center" border="1px" class="datos">
      <div id="barrabuscar" align="center">
        <form method="POST">
          <input type="submit" value="Buscar" name="btnbuscar"><input type="text" name="txtbuscar" id="cajabuscar" placeholder="&#128270;Ingresar nombre del solicitante">
        </form>
      </div>
      <tr>
        <th colspan="6">
          <h1>LISTAR RADICACIONES</h1>
        <th><a type="agregar" style="font-weight: normal; font-size: 14px;" href="agregar.php">Agregar</a></th>
      </tr>
      <tr>
        <th>#</th>
        <th>ID</th>
        <th>Nombre del solicitante</th>
        <th>Fecha</th>
        <th>Asunto</th>
        <th>Texto</th>
        <th>Acciones</th>
      </tr>
      <?php
      $registro=$crudxxxx->getBuscar($_GET,25);
      foreach ($registro['registro']  as $key => $value) {
      ?>
        <tr>
          <td><?= $value['id'] ?></td>
          <td><?= $value['id'] ?></td>
          <td><?= $value['nombre_solicitante'] ?></td>
          <td><?= $value['fecha'] ?></td>
          <td><?= $value['asunto'] ?></td>
          <td><?= $value['texto_solicitud'] ?></td>
          <td style='width:26%'><a href="editar.php?id=<?= $value['id'] ?>">Modificar</a> 
          </td>

        <?php
      }
        ?>
    </table>

    <div>
        <?=$crudxxxx->getPaginar($registro);?>
    </div>
    <script>
      function abrirform() {
        document.getElementById("formregistrar").style.display = "block";

      }

      function cancelarform() {
        document.getElementById("formregistrar").style.display = "none";
      }
    </script>


    <a href="logout.php">
      Logout
    </a>

  <?php else : ?>
    <h1>Please Login or SignUp</h1>

    <a href="login.php">Login</a> or
    <a href="signup.php">SignUp</a>
  <?php endif; ?>

</body>

</html>