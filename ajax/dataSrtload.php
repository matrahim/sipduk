<?php 
	require_once '../connection.php';
	$idsrt = getQuote($_POST['id']);

	$data = getListQuery("SELECT * FROM surat_keluar WHERE Id_sk=".$idsrt);
	
	echo json_encode($data[0]);
 ?>