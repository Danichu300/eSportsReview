<?php

require ("./conexion.php");

$user_name = $_POST['id_admin'];
$user_password = $_POST['pass_admin'];

$sql = "SELECT * FROM usuario WHERE id_usuario = " . $user_name . " AND password = '" . $user_password . "'";

$result = $conn->query($sql);

if ($result) {
    header("Location: ./crearnoticia.php");
} else {
    echo mysqli_error($conn);
}
?>
