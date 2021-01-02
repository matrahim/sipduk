<?php 
require_once '../connection.php';
	$data = $_POST['form'];
	$res =  [];
	$n = 0 ;
	foreach ($data as $val) {
		$res['pend'][$val['name']] = $val['value']==null?'null':$val['value'];
		$n++;
	}

	// var_dump($res);
	// die();
	 function cek($val){
	    	if($val=='null'){
	    		return 'null';
	    	}else{
	    		return getQuote($val);
	    	}
	    }

	    $id_penduduk = cek($res["pend"]["id_pend"]);
	    $nama = cek($res["pend"]["nama_pend"]);
	    $nik = cek(str_replace(" ", "", $res["pend"]["nik"]));
	    $id_kk = cek($res["pend"]["nkk"]);
	    $tempat_lahir = cek($res["pend"]["tempat_lahir"]);
	    $tgl_lahir = cek($res["pend"]["tgl_lahir"]);
	    $agama = cek($res["pend"]["agama"]);
	    $jk = cek($res["pend"]["jk"]);
	    $pekerjaan = cek($res["pend"]["pekerjaan"]);
	    $id_shdk = cek($res["pend"]["shdk"]);
	    $id_status = cek($res["pend"]["status"]);
	    // $wajib_pilih = cek($res["pend"]["wp"]);

	    if ($tgl_lahir!='null') {
	    	$tgl = explode('/', $tgl_lahir);
	    	$tgl_lahir = "'".str_replace("'", "", $tgl[2]).'-'.$tgl[1].'-'.str_replace("'", "", $tgl[0])."'";

	    }
	   

	   $x = getExeQuery ("UPDATE penduduk SET nama = $nama,
						nik =	$nik,
						id_kk =	$id_kk,
						tempat_lahir =	$tempat_lahir,
						tgl_lahir =	$tgl_lahir,
						id_agama =	$agama,
						jk =	$jk,
						pekerjaan =	$pekerjaan,
						id_shdk =	$id_shdk,
						id_status =	$id_status
				WHERE  id_penduduk = $id_penduduk ");

	// $x = getExeQuery("UPDATE penduduk SET nama =	$nama,
	// 					nik =	$nik,
	// 					id_kk =	$id_kk,
	// 					tempat_lahir =	$tempat_lahir,
	// 					tgl_lahir =	$tgl_lahir,
	// 					id_agama =	$agama,
	// 					jk =	$jk,
	// 					pekerjaan =	$pekerjaan,
	// 					id_shdk =	$id_shdk,
	// 					id_status =	$id_status,
	// 					wajib_pilih =	$wajib_pilih
	// 			WHERE  id_penduduk = $id_penduduk ");

	if ($x) {
		echo true;
	}else{
		echo false;
	}

 ?>