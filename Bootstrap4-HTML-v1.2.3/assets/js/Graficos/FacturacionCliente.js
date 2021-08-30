
 var FacturacionClientePromise;
 var TotalOrdenesAbiertasPromise;
 var TotalFacturadoAnualPromise;
 var FacturacionWalmartPromise;
 var FacturacionCasaLeyPromise;

$("#Send").click(function() {
  
  
        
     FacturacionClientePromise = $.ajax({
         data:{'Fecha':$("#LC").val()},
        url: 'Controllers/FacturacionCliente.php',
        type: 'get',
        beforeSend: function() {
            
        },
        success: function(response) {
            
    

          $("#FacturacionClienteResponse").html(response); 
 

           

        }
    });
        FacturacionClientePromise.then(function(){
            //
                   $.ajax({
                 data:{"Fecha":$("#LC").val()},
                url: 'Controllers/LineaNegocio.php',
                type: 'get',
                beforeSend: function() {
                    
                },
                success: function(response) {

             

                 $("#LineaNegocioResponse").html(response); 
                    
                    
              }
        //
        });
        //
        });   



        

                      
            
                 TotalOrdenesAbiertasPromise = $.ajax({
                        data:{"Fecha":$("#LC").val()},
                        url: 'Controllers/TotalOrdenesAbiertas.php',
                        type: 'get',
                        beforeSend: function() {
                            
                        },
                        success: function(response) {

                              $("#TotalOrdenesAbiertasResponse").html(response); 
                        }
}); 

                 TotalOrdenesAbiertasPromise.then(function(){
            //
                 $.ajax({
                        data:{"Fecha":$("#LC").val()},
                        url: 'Controllers/TotalFacturadoAnual.php',
                        type: 'get',
                        beforeSend: function() {
                            
                        },
                        success: function(response) {
                        $("#TotalFacturadoAnualResponse").html(response); 

            }

        });

        //
        }); 
        //
        


                    
return false;

  });


$("#GeneratePDF").click(function() {
          window.open('Controllers/PdfGenerator.php?Fecha=' + $("#LC").val(),'_blank');
});