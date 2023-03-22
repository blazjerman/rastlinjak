<?php

    //Zelo slaba koda (ne pregleduje nobenih napak...)

    //Pridobi se z:
    //https://www.studenti.famnit.upr.si/~89201094/ESP32Rastlinjak/ControllerRequest/get_sensors_data.php?name=temperature&value=2.0&ESP32_id=0&sensor_id=0
    
    
    include("db.php");

    

    $name = $_GET['name'];
    $value = $_GET['value'];
    $ESP32_id = $_GET['ESP32_id'];
    $sensor_id = $_GET['sensor_id'];


    $length = count($name);

    $insert = "INSERT INTO $name (value, ESP32_id, sensor_id) VALUES ($value, $ESP32_id, $sensor_id)";

    mysqli_query($db,$insert);










?>