<?php

require ("./conexion.php");

    $user_name = $_POST['user_registro'];
    $user_password = $_POST['pass_registro'];
    $admin = intval($_POST['admin']);
    $sql = "INSERT INTO usuario (id_usuario, password, nombre_usuario, admin) VALUES (null,'" . $user_password . "','" . $user_name . "','" . $admin . "')";
    $result = $conn->query($sql);
    if($result){
        echo "Estupendioso";
    } else {
        echo mysqli_error($conn);
    }
    
    header("Location: ../index.html");

?>
