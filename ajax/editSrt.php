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

	 function cek($val){
	    	if($val=='null'){
	    		return 'null';
	    	}else{
	    		return getQuote($val);
	    	}
	    }

	    $id_srt = cek($res["pend"]["id_srt"]);
	    $ns = cek(str_replace(" ", "", $res["pend"]["Eno_srt"]));
	    $js = cek($res["pend"]["Ejs"]);
	    $penddk = cek($res["pend"]["Epddk"]);
	    $tgl_srt = cek($res["pend"]["Etgl_srt"]);

	//     if ($tgl_lahir!='null') {
	//     	$tgl = explode('/', $tgl_lahir);
	//     	$tgl_lahir = "'".str_replace("'", "", $tgl[2]).'-'.$tgl[1].'-'.str_replace("'", "", $tgl[0])."'";

	//     }
	   

	   $x = getExeQuery ("UPDATE surat_keluar SET id_jenissurat = $js,
						no_surat =	$ns,
						id_penduduk =	$penddk,
						tgl_srt =	$tgl_srt
				WHERE  Id_sk = $id_srt ");



	if ($x) {
		echo true;
	}else{
		echo false;
	}
