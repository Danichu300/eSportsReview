$(document).ready(function () {
    /*   $("#enviar").click(function () {
     var id = $("#id").val();
     var pass = $("#pass").val();
     
     $.ajax({
     type: "POST",
     url: "../archivos_php/login.php",
     data: {id: id, pw: pass}
     });
     });*/
    $("#login_button").click(submitForm);
    $(".correo").click(activarEmail);
});

/*function submitForm() {
 var data = $("#login-form").serialize();
 console.log(data);
 $.ajax({
 type: 'POST',
 url: '../archivos_php/login.php',
 data: data,
 success: function (response) {
 console.log(response);
 alert(response);
 if (response == "ok") {
 alert("funciona lokete");
 } else {
 alert("pos no funsiona lokete :/");
 }
 }
 });
 return false;
 }*/

function submitForm() {
    var parametros = {
        id: $("#id").val(),
        pass: $("#pass").val()
    };
    alert(parametros);
    $.ajax({
        data: parametros,
        url: '../archivos_php/login.php',
        type: 'POST',
        success: function () {
            alert("hola");
            $("#entrar").text("patata");
        }
    });
}

function activarEmail(){
    $("#email").toggle();
}
