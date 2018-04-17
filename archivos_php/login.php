<?php

require ("./conexion.php");
/*
  $sql = "SELECT * FROM usuario WHERE id_usuario= " . $_POST['id'] . " AND password = " . $_POST['pw'];
  $result = $conn->query($sql);

  if ($result) {
  echo "<script>alert('funciona');</script>";
  } else {
  echo "<script>alert('hola');</script>";
  } */

//if (isset($_POST['login_button'])) {
    $user_name = $_POST['user_registro'];
    $user_password = $_POST['pass_registro'];
    $admin = intval($_POST['admin']);
    $sql = "INSERT INTO usuario (id_usuario, password, nombre_usuario, admin) VALUES (null,'" . $user_password . "','" . $user_name . "','" . $admin . "')";
    //$resultset = mysqli_query($conn, $sql) or die("database error:" . mysqli_error($conn));
    //$row = mysqli_fetch_assoc($resultset);
    $result = $conn->query($sql);
    //$row = $result->fetch_assoc();
    if($result){
        echo "Estupendioso";
    } else {
        echo mysqli_error($conn);
    }
    
    header("Location: ../noticias/csgo.php#menu_registro");
//} else {
   // echo "<p>vaya hombre :/";
//}
?>
