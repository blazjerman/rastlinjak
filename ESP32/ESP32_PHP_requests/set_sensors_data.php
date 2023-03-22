<?php

    //Zelo slaba koda (ne pregleduje nobenih napak...)

    //Pridobi se z:
    //https://www.studenti.famnit.upr.si/~89201094/rastlinjak/ESP32/ESP32_PHP_requests/set_sensors_data.php?password=geselce&name=temperature&value=2.0&ESP32_id=0&sensor_id=0
    
    include("db.php");
    include("secure_connecion.php");


    
    if(!checkPassword())return;
    
    $name = $_GET['name'];
    $value = $_GET['value'];
    $ESP32_id = $_GET['ESP32_id'];
    $sensor_id = $_GET['sensor_id'];


    $length = count($name);

    $insert = "INSERT INTO $name (value, ESP32_id, sensor_id) VALUES ($value, $ESP32_id, $sensor_id)";

    mysqli_query($db,$insert);










?>