<?php 
	require_once '../connection.php';
	$data = $_POST['form'];
	$res =  [];

	// var_dump( $_POST);die();
	foreach ($data as $val) {
		$res['pend'][$val['name']] = $val['value']==null?'null':$val['value'];
	}


	   $pass = getQuote($res["pend"]["pass_baru"]);


	   $x = getExeQuery ("UPDATE profil_desa SET pass = $pass
				WHERE  Id_desa = 1 ");



	if ($x) {
		echo true;
	}else{
		echo false;
	}

 ?>