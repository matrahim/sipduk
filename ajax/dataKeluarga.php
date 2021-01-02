<?php 
	require_once '../connection.php';
	// $idkk = getQuote($_POST['id']);
	$con = true; 
	if (isset($_POST['aksi'])) {
		$id_penduduk = getQuote($_POST['id']);
		$idkk = getListQuery("SELECT * FROM penduduk WHERE Id_penduduk=".$id_penduduk);
		// var_dump($idkk);
			if ($idkk[0]["id_kk"]==null) {
				$con = false;
			}else{
				$con = true;
				$idkk = $idkk[0]['id_kk'];
			}
		# code...
	}else{
		$idkk = getQuote($_POST['id']);
	}
	if ($con) {
		# code...
	$res = getListQuery("SELECT * FROM penduduk 
									LEFT JOIN shdk ON(penduduk.id_shdk=shdk.id_shdk)  
									LEFT JOIN status ON(penduduk.id_status=status.id_status)
									LEFT JOIN kk ON(kk.id_kk=penduduk.id_kk)
									LEFT JOIN dusun ON(kk.id_dusun=dusun.id_dusun)
				WHERE penduduk.id_kk=".$idkk);
	// var_dump($res);
	// isiDatakeluarga
		if (count($res)==0) {
			// var_dump($res);
			$rest[]=NULL;
		$keluarga['keluarga']=NULL;
			
		}else{
				$no=1;

				foreach ($res as $val) :
			 	// $arrayName =;
					$keluarga['keluarga'][($no-1)]= '<tr>
											            <th scope="row">'.$no.'</th>
											            <td>'.$val['nama'].'</td>
											            <td>'.$val['nama_shdk'].'</td>
											            <td>'.$val['nama_status'].'</td>
						        					</tr>';

					$no++; 
				endforeach ;
			$rest =  array('nama_dusun' => $res[0]['nama_dusun'], 'rt' => $res[0]['rt'], 'rw' => $res[0]['rw']);

		}
	
	echo json_encode($rest+$keluarga);	
	}else{
		$rest[]=NULL;
		$keluarga['keluarga']=NULL;
		echo json_encode($rest+$keluarga);

	}
?>