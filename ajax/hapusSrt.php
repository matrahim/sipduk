<?php 
require_once '../connection.php';
	$id = getQuote($_POST['id']);
	$x = getExeQuery("DELETE FROM surat_keluar WHERE Id_sk=".$id);
 	
 	if ($x) {
 		echo true;
 	}else{
 		echo false;
 	}

 ?>