<?php

    //Zelo slaba koda (ne pregleduje nobenih napak...)

    
    include("db.php");

    
    $ESP_id = $_GET['ESP32_id'];
    
    $sql =  "SELECT update_interval FROM ESP32 WHERE id = '$ESP_id'";
    $q = mysqli_query($db,$sql);
    $update_interval = $q->fetch_assoc();

    echo($update_interval["update_interval"]);

?>