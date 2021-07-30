function FechaActual(){


var hoy = new Date();
var dd = hoy.getDate();
var mm = hoy.getMonth()+1; //hoy es 0!
var yyyy = hoy.getFullYear();

if(dd<10) {
    dd='0'+dd
} 

if(mm<10) {
    mm='0'+mm
} 

hoy = yyyy+'-'+mm+'-'+dd;
	 return hoy;
}
function Loading(){

$.preloader.start({
	
	modal: true,
  src : 'Bootstrap4-HTML-v1.2.3/assets/images/logos/sprites1.gif',
  width : 32,
  height : 32,
  frames : 12


});



}

function StopLoading(){

$.preloader.stop();

}


