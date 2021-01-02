<?php 
require_once '../connection.php';
	$data = $_POST['form'];
	$res =  [];
	$n = 0 ;
	foreach ($data as $val) {
		$res['pend'][$val['name']] = $val['value']==null?'null':$val['value'];
		$n++;
	}

	// var_dump($res);die();
	 function cek($val){
	    	if($val=='null'){
	    		return 'null';
	    	}else{
	    		return getQuote($val);
	    	}
	    }


	    $id_penduduk = cek($res["pend"]["list_pend"]);
	    $nkk = cek(str_replace(" ", "", $res["pend"]["no_kk"]));
	    $id_kk = cek($res["pend"]["eid_kk"]);
	    $id_dusun = cek($res["pend"]["dusun"]);
	    $rt = cek($res["pend"]["rt"]);
	    $rw = cek($res["pend"]["rw"]);
	
	    // $wajib_pilih = cek($res["pend"]["wp"]);

	//     if ($tgl_lahir!='null') {
	//     	$tgl = explode('/', $tgl_lahir);
	//     	$tgl_lahir = "'".str_replace("'", "", $tgl[2]).'-'.$tgl[1].'-'.str_replace("'", "", $tgl[0])."'";

	//     }
	   

	   $x = getExeQuery ("UPDATE kk SET no_kk = $nkk,
						id_dusun =	$id_dusun,
						rt =	$rt,
						rw =	$rw
				WHERE  Id_kk = $id_kk ");

	   $y = getExeQuery ("UPDATE penduduk SET id_kk = $id_kk
				WHERE  Id_penduduk = $id_penduduk ");



	if ($x && $y) {
		echo true;
	}else{
		echo false;
	}

 ?>