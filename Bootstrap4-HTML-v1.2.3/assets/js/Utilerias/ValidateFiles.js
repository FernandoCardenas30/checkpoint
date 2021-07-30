//validate if correct file type was chonse for input file
function fileValidation(allowedFiles, element) {
    
    var files = $(element).prop("files");
    // loop trough files
   
        for (var i = 0; i < files.length; i++) {

            // get item
            file = files[i];

            var value = file.name; //value of file field "this.is_file.jpg"
            var lastIndex = value.lastIndexOf('.') + 1; //get last index of "." from value = 12
            var ext = value.substr(lastIndex).toLowerCase(); //extension = get string from that lastIndex+1 = 13-15 (jpg)

            if (jQuery.inArray(ext, allowedFiles) == -1) {
                $(element).val(null).empty();

                $("#lblError").html("Solo se aceptan archivos de imagen");
                return false;

            }

            else {
                $("#lblError").html('');
                return true;

            }

        }
    


}



//input file validator, validate if correct file type was chosen
function ValidateFiles() {
    var allowedFiles = ["png", "jpg","jpeg","tif","tiff","psd", "bmp", "gif"];
    if (fileValidation(allowedFiles, $(".js-file-validation-image"))) {
        return true;
    }
    else {
        return false;
    }
}

function GetNumberOfFiles() {
    var files = $(".js-file-validation-image").prop("files");
    return files.length;
}



