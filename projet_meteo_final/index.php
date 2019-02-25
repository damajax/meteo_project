<html lang="fr">
    <head>
        <meta charset="UTF-8">
            <title>La météo de gulli</title>

            <link rel="stylesheet" href="leaflet/leaflet.css" />
            <link rel="stylesheet" href="style.css" />
            <script src="leaflet/leaflet.js"></script>
            <script
              src="https://code.jquery.com/jquery-3.3.1.js"
              integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
              crossorigin="anonymous"></script>
        </head>
        <body>
            <h1>La météo de gulli</h1>

            <div id="maCarte" style="height: 700px ; width: 1100px"></div>



            <div class="temps">
            <span> Temps </span> <br>
            <span id="tempsid"> Soleil </span>
            <div id="image1"> </div>
            </div>

            <div class="temperature">
            <span> Température </span> <br>
            <a><span id="tempera"> 60 </span> °C </a>
            </div>

            <div class="humidite">
            <span> Humidité </span> <br>
            <a><span id="humi"> 60 </span> %</a>
            </div>

            <div class="sens-vent">
            <span> Sens du vent </span> <br>
            <a><span id="sensv"> 60 </span> ° </a>
            </div>

            <script src="meteo.js"></script>

 
        </body>
    </html>
