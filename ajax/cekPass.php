<?php 
require_once '../connection.php';
	$val = getQuote($_POST['pass']);
	$x = getListQuery("SELECT * FROM profil_desa WHERE pass LIKE ".$val);
 	
 	if (count($x)>0) {
 		echo 1;
 	}else{
 		echo 0;
 	}

 ?>