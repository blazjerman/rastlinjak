<?php

//Zelo slaba koda, ker ne pregleduje nobenih napak.




//To naj bi bil security XD
function checkPassword() {

    $password = "geselce";

    if($password==$_GET['password']){
        return true;
    }
    echo "Passwords do not match!";
    return false;

  }




?>