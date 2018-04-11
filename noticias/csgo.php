<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>CS:GO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../css/newsstyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="shortcut icon" href="img/csgoicon.ico" />
        <link rel="stylesheet" href="../css/csgocss.css"/>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="../archivos_js/csgo.js"></script>
    </head>
    <body>       
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <!-- Navbar content -->
            <a class="navbar-brand" href="#">No te lo pierdas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="../index.html">Portada<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="menuDesplegableJugadores" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jugadores</a>
                        <div class="dropdown-menu" aria-labelledby="menuDesplegableJugadores">
                            <?php
                            require("../archivos_php/conexion.php");

                            $sql = 'SELECT nombre_jugador FROM jugador WHERE equipo = ' . 1;
                            $result = $conn->query($sql);

                            while ($row = $result->fetch_assoc()) {
                                echo "<a class='dropdown-item' href='#'>" . $row['nombre_jugador'] . "</a>";
                            }
                            ?>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="menuDesplegableTorneos" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Torneos</a>
                        <div class="dropdown-menu" aria-labelledby="menuDesplegableTorneos">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="menuDesplegablePartidos" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Partidos</a>
                        <div class="dropdown-menu" aria-labelledby="menuDesplegablePartidos">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="menuDesplegableRegiones" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Regiones</a>
                        <div class="dropdown-menu" aria-labelledby="menuDesplegableRegiones">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="menuDesplegableEquipos" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Equipos</a>
                        <div class="dropdown-menu" aria-labelledby="menuDesplegableEquipos">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a id="entrar" class="nav-link dropdown-toggle" href="#" id="menuDesplegableEquipos" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Entrar</a>
                        <div class="dropdown-menu" aria-labelledby="menuDesplegableEquipos">
                            <form method="post" action="../archivos_php/login.php" class="dropdown-menu p-4" style="display: block;" id="menu_login">
                                <div class="form-group">
                                    <label for="exampleDropdownFormEmail2">ID</label>
                                    <input type="number" id="id" class="form-control" name="id" id="exampleDropdownFormEmail2" placeholder="NNNNN">
                                </div>
                                <div class="form-group">
                                    <label for="exampleDropdownFormPassword2">Contraseña</label>
                                    <input type="password" id="pass" class="form-control" name="pass" id="exampleDropdownFormPassword2" placeholder="*****">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="dropdownCheck2">
                                    <label class="form-check-label" for="dropdownCheck2">
                                        Remember me
                                    </label>
                                </div>
                                <button type="submit" id="enviar" class="btn btn-primary">Sign in</button>
                            </form> 

                            <!--    <form class="form-login" method="post" id="login-form">
                                    <h2 class="form-login-heading">User Log In Form</h2><hr />
                                    <div id="error">
                                    </div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" placeholder="Email address" name="user_email" id="user_email" />
                                        <span id="check-e"></span>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password" name="password" id="password" />
                                    </div>
                                    <hr />
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-default" name="login_button" id="login_button">
                                            <span class="glyphicon glyphicon-log-in"></span>   Sign In
                                        </button>
                                    </div>
                                </form> -->
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="parallax">

            <div class="jumbotron">
                <h1 class="display-4">Counter-Strike Global Offensive</h1>
                <p class="lead">El mejor shooter del momento.</p>
                <!--<hr class="my-4">
                <p>Últimas novedades.</p>
                <p class="lead">
                    <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                </p>-->
            </div>

            <div id="wrapper">
                <section>
                    <!-- <div class="borde"> -->
                    <article class="bg-dark" id="partidos">
                        <h1>Próximos Partidos</h1>
                        <hr/>
                        <div class="contenido">
                            <!--  <nav> -->
                            <ul>
                                <?php
                                $sql = 'SELECT fecha_inicio FROM partido WHERE fecha_inicio > NOW()';
                                $result = $conn->query($sql);

                                while ($row = $result->fetch_assoc()) {
                                    echo "<li>" . $row["fecha_inicio"] . "</li>";
                                }
                                ?>
                            </ul>
                            <!-- </nav> -->
                        </div>                   
                    </article>
                    <!--</div>-->
                    <!-- <div class="borde"> -->
                    <article class="bg-dark" id="torneos">
                        <h1>Próximos Torneos</h1>
                        <hr/>
                        <div class="contenido">
                            <!-- <nav> -->
                            <ul>
                                <?php
                                $sql = 'SELECT nombre_torneo FROM torneo JOIN partido ON partido=id_partido WHERE fecha_inicio > NOW()';
                                $result = $conn->query($sql);

                                while ($row = $result->fetch_assoc()) {
                                    echo "<li>" . $row["nombre_torneo"] . "</li>";
                                }
                                ?>
                            </ul>
                            <!-- </nav> -->
                        </div>
                    </article>
                    <!--</div>-->
                    <!-- <div class="borde"> -->
                    <article class="bg-dark" id="equipos">
                        <h1>Equipos destacados</h1>
                        <hr/>
                        <div class="contenido">
                            <!-- <nav> -->
                            <ul>
                                <?php
                                $sql = 'SELECT * FROM equipo';
                                $result = $conn->query($sql);

                                while ($row = $result->fetch_assoc()) {
                                    echo "<li>" . $row["nombre_equipo"] . "</li>";
                                }
                                ?>
                            </ul>
                            <!-- </nav> -->
                        </div>
                    </article>
                    <!-- </div> -->
                </section>

                <aside id="descripcion">
                    <?php
                    $sql = "SELECT * FROM videojuego";
                    $result = $conn->query($sql);
                    $row = $result->fetch_assoc();
                    echo "<h2>Videojuego: " . $row['nombre_videojuego'] . "</h2>";
                    ?>
                    <hr/>
                    <div class="izquierda-img">
                        <img src="../img/csgologo.jpg"/>
                        <p><?= $row['descripcion'] ?></p>
                    </div>
                </aside>

                <aside id="mecanicas">
                    <h3>Mecánicas de las partidas</h3>
                    <hr/>
                    <div class="derecha-img">
                        <img src="../img/csgologo.jpg"/>
                        <p><?= $row['mecanicas'] ?></p>
                    </div>
                </aside>

                <aside id="tacticas">
                    <h3>Tácticas</h3>
                    <hr/>
                    <div class="izquierda-img">
                        <img src="../img/csgologo.jpg"/>
                        <ul>
                            <?php
                            $texto = $row['tacticas'];
                            $lista = explode("- ", $texto);
                            foreach ($lista as $li) {
                                if ($li != "")
                                    echo "<li>" . $li . "</li>";
                            }
                            ?>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
        <!--Footer-->
        <footer class="page-footer font-small unique-color-dark pt-0">

            <div style="background-color: #3E4551;">
                <div class="container">
                    <!--Grid row-->
                    <div class="row py-4 d-flex align-items-center">

                        <!--Grid column-->
                        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                            <h6 class="mb-0 white-text">¡Comparte en tus redes sociales!</h6>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-md-6 col-lg-7 text-center text-md-right">
                            <!--Facebook-->
                            <a class="fb-ic ml-0" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A//rawgit.com/Danichu300/eSportsReview/Descargar/index.html">
                                <i class="fa fa-facebook white-text mr-lg-4"> </i>
                            </a>
                            <!--Twitter-->
                            <a class="tw-ic" target="_blank" href="https://twitter.com/home?status=https%3A//rawgit.com/Danichu300/eSportsReview/Descargar/index.html">
                                <i class="fa fa-twitter white-text mr-lg-4"> </i>
                            </a>
                            <!--Google +-->
                            <a class="gplus-ic" target="_blank" href="https://plus.google.com/share?url=https%3A//rawgit.com/Danichu300/eSportsReview/Descargar/index.html">
                                <i class="fa fa-google-plus white-text mr-lg-4"> </i>
                            </a>
                            <!--Linkedin-->
                            <a class="li-ic" target="_blank" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A//rawgit.com/Danichu300/eSportsReview/Descargar/index.html&title=&summary=&source=">
                                <i class="fa fa-linkedin white-text mr-lg-4"> </i>
                            </a>
                            <!--Email-->
                            <a class="ins-ic" target="_blank" href="mailto:Awesome eSports Page!!!?&body=https%3A//rawgit.com/Danichu300/eSportsReview/Descargar/index.html">
                                <i class="fa fa-envelope white-text mr-lg-4"> </i>
                            </a>
                        </div>
                        <!--Grid column-->

                    </div>
                    <!--Grid row-->
                </div>
            </div>

            <!--Footer Links-->
            <div class="container mt-5 mb-4 text-center text-md-left">
                <div class="row mt-3">

                    <!--First column-->
                    <div class="col-md-3 col-lg-4 col-xl-3 mb-4">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Novedades</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>Conoce cada detalle sobre los jugadores, torneos, partidos, regiones y equipos que más te gusten.</p>
                    </div>
                    <!--/.First column-->

                    <!--Second column-->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Próximamente</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="#partidos">Próximos partidos</a>
                        </p>
                        <p>
                            <a href="#torneos">Torneos cercanos</a>
                        </p>
                        <p>
                            <a href="#equipos">Equipos destacados</a>
                        </p>
                    </div>
                    <!--/.Second column-->

                    <!--Third column-->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Aprende sus tácticas</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="#descripcion">Descripciones de videojuegos</a>
                        </p>
                        <p>
                            <a href="#mecanicas">Mecánicas</a>
                        </p>
                        <p>
                            <a href="#tacticas">Tácticas</a>
                        </p>
                    </div>
                    <!--/.Third column-->

                    <!--Fourth column-->
                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h6 class="text-uppercase font-weight-bold">
                            <strong>Contacta con nosotros</strong>
                        </h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p class="correo">
                            <i class="fa fa-envelope mr-3"></i> danikillersx@gmail.com</p>
                        <p class="correo">
                            <i class="fa fa-envelope mr-3"></i> onesoco138@gmail.com</p>
                        <p class="correo">
                            <i class="fa fa-envelope mr-3"></i> justcyclo@gmail.com</p>

                        <form id="email" action="../archivos_php/email.php" method="POST" style="display:none;">
                            <b>Por favor, selecciona el administrador con el que quieres contactar</b><br>
                            <select name="admins">
                                <option>danikillersx@gmail.com</option>
                                <option>onesoco138@gmail.com</option>
                                <option>justcyclo@gmail.com</option>
                            </select>
                            <p><b>Subject</b><br>
                                <input type="text" name="subject" size=40>
                            <p><b>Message</b><br>
                                <textarea cols=40 rows=10 name="message"></textarea>
                            <p><input type="submit" value=" Send ">
                        </form>
                    </div>
                    <!--/.Fourth column-->

                </div>
            </div>
            <!--/.Footer Links-->

            <!-- Copyright-->
            <div class="footer-copyright py-3 text-center">
                © 2018 Copyright: Daniel Rodríguez Cardell - Antonio García Llabrés - Julián Maestre Cabrera
            </div>
            <!--/.Copyright -->

        </footer>
        <!--/.Footer-->
    </body>
</html>
