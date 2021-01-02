<?php 
require_once '../connection.php';

	$data = $_POST['form'];
	// var_dump($data);
	$res =  [];
	$n = 0 ;
	foreach ($data as $val) {
		$res['kk'][$val['name']] = $val['value']==null?'null':$val['value'];
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
	    // var_dump($res);die();
	    $no_kk = cek(str_replace(" ", "", $res["kk"]["no_kk"]));
	    $id_pend = cek($res["kk"]["list_pend"]);
	    $id_dusun = cek($res["kk"]["dusun"]);
	    $rt = cek($res["kk"]["rt"]);
	    $rw = cek($res["kk"]["rw"]);


	   $x= getExeQuery("INSERT INTO kk(no_kk,id_dusun,rt,rw) 
	    			            VALUES($no_kk,$id_dusun,$rt,$rw)");

	  $id_kk = getListQuery("SELECT * FROM kk WHERE no_kk =$no_kk")[0]['Id_kk'];
	  // echo $id_kk;
	  $y= getExeQuery("UPDATE penduduk SET id_kk='".$id_kk."' 
	    			            WHERE Id_penduduk=".$id_pend);
	  
		if ($x && $y) {
			echo true;
		}else{
			echo false;
		}
 ?>
