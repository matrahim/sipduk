<?php 
require_once '../connection.php';
	$id = getQuote($_POST['id']);
	$x = getExeQuery("DELETE FROM penduduk WHERE Id_penduduk=".$id);
 	
 	if ($x) {
 		echo true;
 	}else{
 		echo false;
 	}

 ?>