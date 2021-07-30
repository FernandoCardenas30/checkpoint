$(document).on('change', '#imagen', function () {
    if (this.files && this.files[0]) {

        if (ValidateFiles()) {
            /* Creamos la Imagen*/
            var img = $('<img  height="100%" width="100%" style="display: block !important" >');
            /* Asignamos el atributo source , haciendo uso del método createObjectURL*/
            img.attr('src', URL.createObjectURL(this.files[0]));
            /* Añadimos al Div*/

            $('#preview').empty();
            $('#preview').append(img);
        }
        else {
            $('#preview').empty();
            $("#FilesAllowed").modal();
        }
    }
    
       
        
      
    
});



$("#SeePrevImage").click(function () {
    if (GetNumberOfFiles() > 0) {
        $("#myModal").modal();
    }
    else {
        $("#lblError").html("No ha seleccionado ninguna imagen");
        $("#FilesAllowed").modal();
    }
})
