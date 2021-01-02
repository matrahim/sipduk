<?php 
	require_once '../connection.php';
	$idKK = getQuote($_POST['id']);

	$res = getListQuery("SELECT * FROM kk WHERE Id_kk=".$idKK)[0];
	$data= getListQuery("SELECT Id_penduduk FROM penduduk WHERE Id_kk=".$idKK." AND id_shdk=1 ");
	if (count($data)>0) {
		$data = $data[0];
	}
	echo json_encode($res+$data);
 ?>