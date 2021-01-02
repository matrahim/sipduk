<?php 
	require_once '../connection.php';
	$data = $_POST['form'];
	$res =  [];

	foreach ($data as $val) {
		$res['pend'][$val['name']] = $val['value']==null?'null':$val['value'];
	}

	// var_dump($res);

	   $id = getQuote($res["pend"]["id_"]);
	   $kd = getQuote($res["pend"]["n_kades"]);
	   $addr = getQuote($res["pend"]["d_alamat"]); 

	   $x = getExeQuery ("UPDATE profil_desa SET kepala_desa = $kd,
						alamat =	$addr
				WHERE  Id_desa = $id ");



	if ($x) {
		echo true;
	}else{
		echo false;
	}

 ?>