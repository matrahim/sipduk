<?php 
session_start();
require_once '../connection.php';

// var_dump($_POST);

$user = getQuote($_POST["dataForm"][0]["value"]);
$pas = getQuote($_POST["dataForm"][1]["value"]);

// echo $user.$pas;

$resut = count(getListQuery("SELECT * FROM profil_desa WHERE user=$user AND pass=$pas"));

if ($resut > 0) {
	echo true;
	$_SESSION["login"] = "activ";
}else{
	echo false;
}