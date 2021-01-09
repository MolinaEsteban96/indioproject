var nameReady = false;
var surnameReady = false;
var usernameReady = false;
var passwordReady = false;


$(document).ready(function() {
    $("#form button").attr("disabled",true)    
    $("#name").keyup(function() {
        if($(this).val().length < 3) {
            $("#errorName").text("Nombre demasiado corto")
            return nameReady = false;
        } else if ($(this).val().length > 16){
            $("#errorName").text("Nombre demasiado largo")
            return nameReady = false;
        } else if($(this).val().includes(" ")){
            $("#errorName").text("No se permiten espacios")
            return nameReady = false
        } else{
            $("#errorName").text("")
            return nameReady = true;
            
        }
    });

    $("#surname").keyup(function() {
        if($(this).val().length < 2) {
            $("#errorSurname").text("Apellido demasiado corto")
            return surnameReady = false
        } else if ($(this).val().length > 16){
            $("#errorSurname").text("Apellido demasiado largo")
            return surnameReady = false
        } else if($(this).val().includes(" ")){
            $("#errorSurname").text("No se permiten espacios en el apellido")
            return surnameReady = false
        } else{
            $("#errorSurname").text("")
            return surnameReady = true
        }
    });

    $("#username").keyup(function() {
        if($(this).val().length < 2) {
            $("#errorUsername").text("Nombre de usuario demasiado corto")
            return usernameReady = false
        } else if ($(this).val().length > 16){
            $("#errorUsername").text("Nombre de usuario demasiado largo")
            return usernameReady = false
        } else if($(this).val().includes(" ")){
            $("#errorUsername").text("No se permiten espacios en el nombre de Usuario")
            return usernameReady = false
        } else {
            $("#errorUsername").text("")
            return usernameReady = true
        }
    });

	 $("#password").keyup(function() {
	        if($(this).val().length < 8) {
                $("#errorPassword").text("Contraseña demasiado corta")
	            return passwordReady = false
	        } else if ($(this).val().length > 16){
	            $("#errorPassword").text("Contraseña demasiado larga")
	            return passwordReady = false
	        } else if($(this).val().includes(" ")){
	            $("#errorPassword").text("No se permiten espacios en la contraseña")
	            return passwordReady = false
	        } else {
	            $("#errorPassword").text("")
	            return passwordReady = true
	        }
     });
     
     $("#name, #surname, #username, #password").keyup(function() {

        if (nameReady == true && surnameReady == true && usernameReady == true && passwordReady == true) {
            $("#form button").attr("disabled",false)
        }
    });

    $("#form button").click(function(){
        $("#form").submit()
        $(this).attr("disabled",true)
    });
});
