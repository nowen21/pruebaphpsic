<?php
require 'database.php';
$crudxxxx->crearUsurio();
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>SignUp</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>

  <?php require 'partials/header.php' ?>

  <h1>SignUp</h1>
  <span>or <a href="login.php">Login</a></span>

  <form action="signup.php" method="POST">
    <input name="nombre" type="text" placeholder="Ingrese su nombre">
    <input name="email" type="text" placeholder="Ingrese su correo">
    <input name="password" type="password" placeholder="Ingrese su contraseña">
    <input name="confirm_password" type="password" placeholder="Confirme su contraseña">
    <input type="submit" value="Submit">
  </form>

</body>

</html>