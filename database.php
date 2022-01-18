<?php

session_start();
class Crud
{
	private $conn;
	private $post;
	public function __construct($post)
	{
		$this->post = $post;
		$this->conn = new mysqli("localhost", "root", "", "phpprueba");

		if ($this->conn->connect_errno) {
			echo "No hay conexión: (" . $this->conn->connect_errno . ") " . $this->conn->connect_error;
		}
	}

	public function getRegistro($sql)
	{
		if (mysqli_query($this->conn, $sql)) {
			echo "New record created successfully";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($this->conn);
		}
		mysqli_close($this->conn);
	}
	/**
	 * crear usuario
	 *
	 * @return void
	 */
	public function crearUsurio()
	{
		if (isset($this->post['email']) && isset($this->post['password'])) {
			$nombre   = $this->post['nombre'];
			$email   = $this->post['email'];
			$password   = $this->post['password'];
			$sql = "INSERT INTO users (nombre,email,password) VALUES('$nombre','$email','$password')";
			$this->getRegistro($sql);
		}
	}

	public function getUsuarioRegistrado()
	{
		if (!empty($this->post['email']) && !empty($this->post['password'])) {
			$email 	= $this->post['email'];

			$queryxxx = "SELECT id,email, password FROM users WHERE email ='" . $email . "'";
			$queryusuarios = mysqli_query($this->conn, $queryxxx);
			$results = mysqli_fetch_array($queryusuarios);
			$message = '';
			print_r(password_verify($this->post['password'], $results['password']));
			if ($queryusuarios != null && $this->post['password'] == $results['password']) {
				$_SESSION['user_id'] = $results['id'];
				header("Location: /phpprueba");
			} else {
				$message = 'Sorry, those credentials do not match';
			}
			return $message;
		}
	}

	public function getUsurio()
	{
		if (isset($_SESSION['user_id'])) {
			$queryusuarios = mysqli_query($this->conn, "SELECT id,email, password FROM users WHERE id ='" . $_SESSION['user_id'] . "'");
			$results = mysqli_fetch_array($queryusuarios);
			return  $results['id'];
		}
	}



	public function setRadicacion()
	{
		if (isset($this->post['btnregistrar'])) {
			$nombre 	= $this->post['nombre_solicitante'];
			$asunto 	= $this->post['asunto'];
			$text 	= $this->post['texto'];
			$fecha 	= $this->post['fecha'];
			$sql = "INSERT INTO radicaciones (nombre_solicitante,fecha,asunto,texto_solicitud) VALUES('$nombre','$fecha','$asunto','$text')";
			if (mysqli_query($this->conn, $sql)) {
				echo "New record created successfully";
			} else {
				echo "Error: " . $sql . "<br>" . mysqli_error($this->conn);
			}
		}
		$queryusuarios = mysqli_query($this->conn, "SELECT id ,nombre from users");
		mysqli_close($this->conn);
		return $queryusuarios;
	}

	public function getRadicacion($codigo)
	{
		$querybuscar = mysqli_query($this->conn, "SELECT * FROM radicaciones WHERE id=$codigo");
		$mostrar = (object)mysqli_fetch_array($querybuscar);
		return $mostrar;
	}

	public function setActulizaRadicacion($codigo)
	{
		if (isset($_POST['btnmodificar'])) {
			$codigo1 = $this->post['id'];
			$nombre1 = $this->post['nombre_solicitante'];
			$fecha1 = $this->post['fecha'];
			$asunto1 = $this->post['asunto'];
			$texto1 = $this->post['texto_solicitud'];
			$sql = "UPDATE radicaciones SET nombre_solicitante='$nombre1',fecha='$fecha1',asunto='$asunto1',texto_solicitud='$texto1' WHERE id=$codigo1";
			$this->getRegistro($sql);
			return "<script>window.location= 'index.php' </script>";
		}
	}

	public function setEliminar($codigo)
	{
		$sql = "DELETE FROM radicaciones WHERE id=$codigo";
		$this->getRegistro($sql);
		return "<script>window.location= 'index.php' </script>";
	}

	public function getPaginar($registro)
	{
		$respust = '';
		if (($registro['pagina'] - 1) > 0) {
			$respust .= "<a href='index.php?pagina=" . ($registro['pagina'] - 1) . "'>< Anterior</a> ";
		} else {
			$respust .= "<a href='#'>< Anterior</a> ";
		}
		for ($i = 1; $i <= $registro['totalpag']; $i++) {
			if ($registro['pagina'] == $i) {
				$respust .= "<a href='#'>" . $registro['pagina'] . "</a> ";
			} else {
				$respust .= "<a href='index.php?pagina=$i'>$i</a> ";
			}
		}
		if (($registro['pagina'] + 1) <= $registro['totalpag']) {
			$respust .= "<a href='index.php?pagina=" . ($registro['pagina'] + 1) . "'>Siguiente ></a>";
		} else {
			$respust .= "<a href='#'>Siguiente ></a>";
		}
		return $respust;
	}


	public function getBuscar($get, $registros)
	{
		$general = mysqli_query($this->conn, "SELECT * FROM radicaciones");
		$pagina = 0;
		if (isset($get['pagina'])) {
			$pagina = $get['pagina'];
		}
		if (!$pagina) {
			$inicio = 0;
			$pagina = 1;
		} else {
			$inicio = ($pagina - 1) * $registros;
		}
		if (isset($this->post['btnbuscar'])) {
			$buscar = $this->post['txtbuscar'];
			$queryrad = mysqli_query($this->conn, "SELECT * FROM radicaciones where nombre_solicitante like '" . $buscar . "%' LIMIT $inicio, $registros");
		} else {
			$queryrad = mysqli_query($this->conn, "SELECT * FROM radicaciones ORDER BY id asc  LIMIT $inicio, $registros");
		}

		$totalreg = mysqli_num_rows($general);
		$total_paginas = ceil($totalreg / $registros);
		return ['registro' => $queryrad, 'totalreg' => $totalreg, 'totalpag' => $total_paginas, 'pagina' => $pagina];
	}
}

$crudxxxx = new Crud($_POST);
