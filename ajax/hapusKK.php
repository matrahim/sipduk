<?php 
require_once '../connection.php';
	$id = getQuote($_POST['id']);
	$x = getExeQuery("DELETE FROM kk WHERE Id_kk=".$id);
 	
 	if ($x) {
 		echo true;
 	}else{
 		echo false;
 	}

 ?>