<?php 

include("con_db.php");

if (isset($_POST['register'])) {
    
	$nombre = ($_POST['nombre']);
	$apellido = ($_POST['apellido']);
	$email = ($_POST['email']);
	$pais = ($_POST['pais']);
	$telefono = ($_POST['telefono']);
	$trabajo = ($_POST['trabajo']);
        
	$mysqli_get_users = mysqli_query($conex,"SELECT * FROM reg_usuario WHERE nombre='$nombre' and apellido='$apellido'");

	$get_rows = mysqli_affected_rows($conex);

	if($get_rows >=1){
	    ?> 
		<h3 class="error">Este nombre y apellido ya fue registrado</h3>
	    <?php
		die();
	}
	
	$mysqli_get_users = mysqli_query($conex,"SELECT * FROM reg_usuario WHERE email='$email'");

	$get_rows = mysqli_affected_rows($conex);

	if($get_rows >=1){
	    ?> 
		<h3 class="error">Este email ya fue registrado</h3>
	    <?php
		die();
	}

	$mysqli_get_users = mysqli_query($conex,"SELECT * FROM reg_usuario WHERE telefono='$telefono'");

	$get_rows = mysqli_affected_rows($conex);

	if($get_rows >=1){
		?> 
		<h3 class="error">Este telefono ya fue registrado</h3>
	    <?php
	die();
	}
	
	$consulta = "INSERT INTO reg_usuario(nombre, apellido, email, pais, telefono, trabajo) VALUES ('$nombre','$apellido','$email','$pais','$telefono','$trabajo')";
	$resultado = mysqli_query($conex,$consulta);
	if ($resultado) {
		?> 
		<h3 id="ok">¡Te has inscripto correctamente!</h3>
	    <?php
	} else {
		?> 
		<h3 class="error">¡Ups ha ocurrido un error!</h3>
	    <?php
	}	   
}

?>