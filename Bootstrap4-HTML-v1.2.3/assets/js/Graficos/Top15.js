
$.ajax({      
                url: 'Controllers/Top15.php',
                type: 'get',
                beforeSend: function() {
                     Loading();
                },
                success: function(response) {
              $("#LineaNegocioResponse").html(response); 
              StopLoading();
    }

});

