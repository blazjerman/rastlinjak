<?php

    //Zelo slaba koda, ker ne pregleduje nobenih napak.




    include("db.php");
    include("secure_connection.php");

    
    if(!checkPassword())return;

    
    $mac = $_GET['mac'];


    $sql =  "SELECT id FROM ESP32 WHERE mac = '$mac'";
    $q = mysqli_query($db,$sql);
    $id = $q->fetch_assoc();


    echo($id["id"]);


?>