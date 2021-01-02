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
	    // var_dump($res);
	    // array(1) { ["pend"]=> array(10) { ["nama_pend"]=> string(3) "qwe" ["nik"]=> string(4) "null" ["nkk"]=> string(4) "null" ["tempat_lahir"]=> string(4) "null" ["tgl_lahir"]=> string(4) "null" ["agama"]=> string(4) "null" ["Tjk"]=> string(1) "P" ["pekerjaan"]=> string(4) "null" ["shdk"]=> string(4) "null" ["status"]=> string(4) "null" } } 
	    if (isset($res["pend"]["Tjk"])) {
	    	$jk = cek($res["pend"]["Tjk"]);
	    }else{
	    	$jk = cek('null');
	    }

	    $nama = cek($res["pend"]["nama_pend"]);
	    $nik = cek(str_replace(" ", "", $res["pend"]["nik"]));
	    $id_kk = cek($res["pend"]["nkk"]);
	    $tempat_lahir = cek($res["pend"]["tempat_lahir"]);
	    $tgl_lahir = cek($res["pend"]["tgl_lahir"]);
	    $agama = cek($res["pend"]["agama"]);
	    // $jk = cek();
	    $pekerjaan = cek($res["pend"]["pekerjaan"]);
	    $id_shdk = cek($res["pend"]["shdk"]);
	    $id_status = cek($res["pend"]["status"]);

	   $x= getExeQuery("INSERT INTO penduduk(nama,nik,id_kk,tempat_lahir,tgl_lahir,jk,id_agama,pekerjaan,id_shdk,id_status) 
	    			               VALUES($nama,$nik,$id_kk,$tempat_lahir,$tgl_lahir,$jk,$agama,$pekerjaan,$id_shdk,$id_status)");


		if ($x) {
			echo true;
		}else{
			echo false;
		}
?>