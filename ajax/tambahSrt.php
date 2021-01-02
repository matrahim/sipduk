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
	    // 474.1/01/IV/2018/D.TK;
	    // $tgl = explode('-', $res["pend"]["tgl_srt"]);
	    $nsrt = cek($res["pend"]["no_srt"]);
	    $id_js = cek($res["pend"]["js"]);
	    $id_pend = cek($res["pend"]["pddk"]);
	    $tgl = cek($res["pend"]["tgl_srt"]); 

	    $x= getExeQuery("INSERT INTO surat_keluar(id_jenissurat,no_surat,id_penduduk,tgl_srt) 
	    			               VALUES($id_js,$nsrt,$id_pend,$tgl)");


		if ($x) {
			echo true;
		}else{
			echo false;
		}