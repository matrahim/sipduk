<?php
// error_reporting(E_ALL ^ E_NOTICE & ~E_NOTICE);
error_reporting(E_ALL & ~E_WARNING & ~E_NOTICE);
require_once "../connection.php";



require_once 'excel_reader2.php';
$data = new Spreadsheet_Excel_Reader("example.xls");
$sheet = 5;
function cek($val){
	if(empty($val)){
		return 'NULL';
	}else{
		return getQuote($val);
	}
}
// $id = 97;
for ($i=4; $i <117 ; $i++) { 
	$id_kk = cek($data->val($i,'a',$sheet));
	$nik = cek($data->val($i,'c',$sheet));
	$nama = cek($data->val($i,'d',$sheet));
	$tmp_lhr = 'NULL';
	$tgl_lhr = cek($data->val($i,'g',$sheet));
	$jk = getQuote($data->val($i,'k',$sheet)=='1'?'L':'P');
	$agama = cek($data->val($i,'t',$sheet));
	$shdk = cek($data->val($i,'r',$sheet));
	$status = cek($data->val($i,'h',$sheet));
	if ($tgl_lhr!='NULL') {
		$tgl = explode(',', str_replace("'", '', $tgl_lhr));
		$tmp_lhr = "'".$tgl[0]."'";
		if ($tgl[1]!=0) {
			$tg = explode('/', str_replace("-", '/', trim($tgl[1])));
			$tgl_lhr = "'".$tg[2]."/".$tg[1]."/".$tg[0]."'";
		}else{
			$tgl_lhr = 'NULL';
		}
	}
		// getExeQuery("UPDATE penduduk SET tgl_lahir=$tgl_lhr,tempat_lahir=$tmp_lhr WHERE id_penduduk=".$id);
		// echo $id.' '.$tmp_lhr."-".$tgl_lhr;
		// echo "<br>";
		// $id++;
	// $x = getExeQuery("INSERT INTO penduduk(id_kk,nik,nama,tempat_lahir,tgl_lahir,jk,id_agama,id_shdk,id_status) VALUES($id_kk,$nik,$nama,$tmp_lhr,$tgl_lhr,$jk,$agama,$shdk,$status)");
	// if ($x) {
	// 	echo  "data ".$i." Masuk<br>";
	// }else{
	// 	echo  "data ".$i." Gagl Masuk<br>";
	// }
}



// echo $data->val(4,'a',6);
// $n = 0;
// $id=145;
// $temp=0;
// for ($i=4;$i<117;$i++) { 
// 	$temp = $data->val($i,'b',5);
// 	$temp2 = $data->val($i,'a',5);

// 	$rw = $data->val($i,'n',5)==2?'02':'03';
// 	if ($data->val(($i+1),'a',5)!=$temp2) {
// 		 // echo getQuote($rw).'<br>';
// 		//echo ("INSERT INTO kk(id_kk,no_kk,id_dusun,rt,rw) values(".getQuote($id).",".getQuote($temp).",'02','03',".getQuote($rw).") ").'<br>';
// 		$x = getExeQuery("INSERT INTO kk(id_kk,no_kk,id_dusun,rt,rw) values(".getQuote($id).",".getQuote($temp).",'03','06',".getQuote($rw).") ");
// 			if ($x) {
// 				echo "data baris ".$i." berhasil masuk<br>";
// 				$n++;
// 				$id++;
// 			}else{
// 				echo "data baris ".$i." gagal masuk<br>";
// 				$n++;
// 				$id++;
// 			}
// 	}

// }


	
?>
