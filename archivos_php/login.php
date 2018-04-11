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
    $user_email = ($_POST['id']);
    $user_password = ($_POST['pass']);
    $sql = "SELECT * FROM usuario WHERE id_usuario=" . $user_email;
    //$resultset = mysqli_query($conn, $sql) or die("database error:" . mysqli_error($conn));
    //$row = mysqli_fetch_assoc($resultset);
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    if ($row['password'] == $user_password) {
        echo "<p>ok</p>";
        $_SESSION['user_session'] = $row['id_usuario'];
    } else {
        echo "<p>email or password does not exist.</p>";
    }
//} else {
   // echo "<p>vaya hombre :/";
//}
?>
