
$.ajax({
                
                url: 'Controllers/ConcentracionNegocio.php',
                type: 'get',
                beforeSend: function() {
                    Loading();
                },
                success: function(response) {
              $("#LineaNegocioResponse").html(response); 
             StopLoading();
              
    }

});



