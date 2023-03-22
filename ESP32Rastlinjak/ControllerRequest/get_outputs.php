<?php

    //Zelo slaba koda (ne pregleduje nobenih napak...)

    
    include("db.php");

    
    $ESP_id = $_GET['ESP32_id'];
    
    $sql =  "SELECT outputs FROM ESP32 WHERE id = '$ESP_id'";
    $q = mysqli_query($db,$sql);
    $outputs = $q->fetch_assoc();

    echo($outputs["outputs"]);

?>