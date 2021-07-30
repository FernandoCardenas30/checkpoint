
$.ajax({
                data:({"Fecha":'2018-05-24'}),
                url: 'Controllers/LineaNegocioGraficas.php',
                type: 'get',
                beforeSend: function() {
                    
                },
                success: function(response) {

              $("#LineaNegocioResponse").html(response); 

    

    }

});

