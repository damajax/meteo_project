  
/*
$(function(){
    changeMeteo(maMeteo);
});*/


var maMeteo = {
    temperature1:30 , 
    temps1:'soleil',
    humidite1:50,
    direction1:120,
    pression1:1050,
    vitesse1:5,
    lieu1:'Nantes'
}
console.log(maMeteo);
console.log(maMeteo.temperature1);
console.log(maMeteo.temps1);
console.log(maMeteo.humidite1);
console.log(maMeteo.direction1);
console.log(maMeteo.pression1);
console.log(maMeteo.vitesse1);
console.log(maMeteo.lieu1);


function changerTemps(temps)
    {
    $('#tempsid').text(temps);
    };

function changerTemperature(temperature)
    {
    $('#tempera').text(temperature);
    };

function changerHumidite(humidite)
    {
    $('#humi').text(humidite);
    };

function changerSensvent(sensvent)
    {
    $('#sensv').text(sensvent);
    };

function changeMeteo(maMeteo){
    changerTemps(maMeteo.temps);
    changerTemperature(maMeteo.temperature);
    changerHumidite(maMeteo.humidite);
    changerSensvent(maMeteo.direction);
    //changerPression(maMeteo.pression1);
    //changerVitesse(maMeteo.vitesse1);
    //changerLieu(maMeteo.lieu1);
}



function main() {
    var maCarte = L.map('maCarte').setView([46.5, 2], 6.1);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: ' <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(maCarte);

    maCarte.on('click', 
        function(e){
            var coord = e.latlng.toString().split(',');
            var lat = coord[0].split('(');
            var lng = coord[1].split(')');
            console.log("Latitude: " + lat[1] + " Longitude:" + lng[0]);
            $.get("data.php" , {lat:lat[1] , lng:lng[0] } ).done (function(data){
                changeMeteo(JSON.parse(data));
                console.log(JSON.parse(data));
            });
        });
}

window.onload = main;
                

/*function image(image){
    $('#image1').html('<img src="' +image+  '" >'); 
};

if (true){
    $(image("https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Solar_prominence_from_STEREO_spacecraft_September_29%2C_2008.jpg/280px-Solar_prominence_from_STEREO_spacecraft_September_29%2C_2008.jpg"))
}*/