<?php
//session_start();
include "api.php";
// Insertion des variables



function InsertOrUpdateMeteo($lat , $lng)
{
  

    $database = mysqli_connect('localhost', 'root', '', 'meteo');

    if (!$database) {
        die("Connection failed: " . mysqli_connect_error());
    } else {
        //echo "Connected to database. <br>";
    }

    $query = mysqli_query($database, "SELECT * FROM valeurs WHERE abs(latitude -$lat) < 0.1 AND abs(longitude - $lng ) < 0.2;");

    if (!$query) {
        die('Error: ' . mysqli_error($database));
    }

    if (mysqli_num_rows($query) > 0) {

        
        /*while ($donnees = $query->fetch())
        {
            echo $donnees['latitude'] . '<br />';
        }*/

        $row=mysqli_fetch_assoc($query);
        $temperature = $row['temperature'];
        $humidite = $row['humidite'];
        $pression = $row['pression'];
        $vitesse_vent = $row['vitesse_vent'];
        $direction_vent = $row['direction_vent'];
        $temps = $row['temps'];
        $lieu = $row['lieu'];
        $lat = $row['latitude'];
        $lng = $row['longitude'];

        /*$sql="UPDATE valeurs SET temperature='".$temperature."' , humidite='".$humidite."' , pression='".$pression."' , temps='".$temps."' , vitesse_vent='".$vitesse_vent."' , direction_vent='".$direction_vent."'
        WHERE lieu like ".$lieu.";";*/
        //echo "La ville existe déjà !";
        $sql = "UPDATE valeurs SET temperature='" . $temperature . "', humidite='" . $humidite . "', pression='" . $pression . "' , vitesse_vent='" . $vitesse_vent .
            "', direction_vent= '" . $direction_vent . "', latitude ='" . $lat . "' , longitude ='" . $lng . "', temps='" . $temps . "'
        WHERE lieu like'" . $lieu . "';";
        $database->query($sql);
        //echo(mysqli_error($query));
        $meteoar = Array("lieu" => "$lieu" ,"temperature" => $temperature , "latitude" => $lat , "longitude" => $lng , "humidite" => $humidite , "pression" => $pression , "vitesse_vent" => $vitesse_vent, "direction_vent" => $direction_vent , "temps" => "$temps" );
        $json = json_encode($meteoar);
        //var_dump($json);
        
    } else {

        $infoMeteo = getMeteoAPosition($lat, $lng);

        //echo "La ville à bien été créee";
        $sql = "INSERT INTO valeurs (temperature,lieu,latitude,longitude,humidite,pression,temps,vitesse_vent,direction_vent)
        VALUES ('$infoMeteo[1]','$infoMeteo[6]','$lat','$lng','$infoMeteo[3]','$infoMeteo[2]','$infoMeteo[0]','$infoMeteo[4]','$infoMeteo[5]');";
        $database->query($sql);

        $meteoar2 = Array("lieu" => $infoMeteo[6] ,"temperature" => $infoMeteo[1] , "latitude" => $lat , "longitude" => $lng , "humidite" => $infoMeteo[3] , "pression" => $infoMeteo[2] , "vitesse_vent" => $infoMeteo[4], "direction_vent" => $infoMeteo[5] , "temps" => $infoMeteo[0] );
        $json = json_encode($meteoar2);

    }
    return $json;

}
//var_dump($_GET);
echo (InsertOrUpdateMeteo($_GET['lat']+0,$_GET['lng']+0));




?>

