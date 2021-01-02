<?php 
require_once '../connection.php';
	// var_dump($_POST);
	$data = $_POST['form'];
	foreach ($data as $val) {
		$res['data'][$val['name']] = $val['value']==null?'null':$val['value'];

	}
	// var_dump($res);
		$id = $res['data']["id_"];
		$jdl = getQuote($res['data']["g_judul"]);
		$ket = getQuote($res['data']["k_Foto"]); 
		// echo "UPDATE profil_gambar SET nama_gambar = 'gambar$id.jpg',
		// 						judul =	$jdl,
		// 						ket =	$ket
		// 				WHERE  id = $id";die();

	  $x = getExeQuery ("UPDATE profil_gambar SET nama_gambar = 'gambar$id.jpg',
						judul =	$jdl,
						ket =	$ket
				WHERE  id = $id ");
	  	if ($_POST['img']!='kosong') {
	  		
			$base64_img = $_POST['img'];
			$base_to_php = explode(',', $base64_img);
				// the 2nd item in the base_to_php array contains the content of the image
			$data = base64_decode($base_to_php[1]);
				// here you can detect if type is png or jpg if you want
			$filepath = "../img/hd/gambar{$id}.jpg"; // or image.jpg

				// Save the image in a defined path
			file_put_contents($filepath,$data);
	  	}
	  
		echo true;
	  