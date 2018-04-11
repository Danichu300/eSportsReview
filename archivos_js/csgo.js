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
        "id": $("#id"),
        "pass": $("#pass")
    };
    $.ajax({
        data: parametros,
        url: '..\archivos_php\login.php',
        type: 'post',
        beforeSend: function () {
            alert("Procesando, espere por favor...");
        },
        success: function (response) {
            alert("hola");
        }
    });
}
