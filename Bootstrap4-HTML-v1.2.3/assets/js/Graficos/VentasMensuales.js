
$.ajax({
                
                url: 'Controllers/VentasMensuales.php',
                type: 'get',
                beforeSend: function() {
                      Loading();
                },
                success: function(response) {

              $("#LineaNegocioResponse").html(response); 

    			StopLoading();

    }

});

