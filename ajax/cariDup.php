<?php 
	require_once '../connection.php';
	
	if ($_POST['pros']=='nik') {
		if (isset($_POST['aksi'])) {
			$nik = getQuote($_POST['cari']);
			$id = getQuote($_POST['id']);
			$res = getListQuery("SELECT * FROM penduduk WHERE nik=".$nik." AND Id_penduduk=".$id." ");
			// var_dump($res);	
			if (count($res)==0) {
				$res1 = getListQuery("SELECT * FROM penduduk WHERE nik=".$nik);
				if (count($res1)==0) {
					echo true;
				}else{
					echo false;
				}
			}else{
				echo true;
			}
		}else{
			$nik = getQuote($_POST['cari']);
			$res = getListQuery("SELECT * FROM penduduk WHERE nik=".$nik);
			if (count($res)==0) {
				echo true;
			}else{
				echo false;
			}
		}
	}

	if ($_POST['pros']=='kk') {
		if (isset($_POST['aksi'])) {
			$nik = getQuote($_POST['cari']);
			$id = getQuote($_POST['id']);
			$res = getListQuery("SELECT * FROM kk WHERE no_kk=".$nik." AND Id_kk=".$id." ");
			// var_dump($res);	
			if (count($res)==0) {
				$res1 = getListQuery("SELECT * FROM kk WHERE no_kk=".$nik);
				if (count($res1)==0) {
					echo true;
				}else{
					echo false;
				}
			}else{
				echo true;
			}
		}else{
			$nik = getQuote($_POST['cari']);
			$res = getListQuery("SELECT * FROM kk WHERE no_kk=".$nik);
			if (count($res)==0) {
				echo true;
			}else{
				echo false;
			}
		}
	}