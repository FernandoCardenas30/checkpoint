function ValidaCampos() {
    if ($("#loginFormInputPassword").val() == "123") {
        window.location.href = "AltaEquipo.html"
    }
    else {
        $("#LoginValidate").modal();
    }
}