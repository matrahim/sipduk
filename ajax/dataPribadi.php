<?php 
	require_once '../connection.php';
	$id = getQuote($_POST['id']);
	$pribadi = getListQuery("SELECT * FROM penduduk 
									LEFT JOIN shdk ON(penduduk.id_shdk=shdk.id_shdk)  
									LEFT JOIN status ON(penduduk.id_status=status.id_status)
							WHERE penduduk.id_penduduk=".$id);
	$keluarga= [];
	$alamat=[];
	if ($pribadi[0]['id_kk']!=null) {
			# code...
		$Dkeluarga = getListQuery("SELECT * FROM penduduk 
										LEFT JOIN shdk ON(penduduk.id_shdk=shdk.id_shdk)  
										LEFT JOIN status ON(penduduk.id_status=status.id_status)
										LEFT JOIN kk ON(kk.id_kk=penduduk.id_kk)
										LEFT JOIN dusun ON(kk.id_dusun=dusun.id_dusun)
					WHERE penduduk.id_kk=".$pribadi[0]['id_kk']);
		// var_dump($res);
		// isiDatakeluarga

		$no=1;

		foreach ($Dkeluarga as $val) :
	 	// $arrayName =;
		
					$keluarga['Dkeluarga'][($no-1)]= '<tr>
											            <th scope="row">'.$no.'</th>
											            <td>'.$val['nama'].'</td>
											            <td>'.$val['nama_shdk'].'</td>
											            <td>'.$val['nama_status'].'</td>
						        					</tr>';
						
						$no++; 

		endforeach ;
	$alamat =  array('nama_dusun' => $Dkeluarga[0]['nama_dusun'], 'rt' => $Dkeluarga[0]['rt'], 'rw' => $Dkeluarga[0]['rw']);
	}
	



	// if ($pribadi[0]['tgl_lahir']==null && $pribadi[0]['id_status']==null) {
	// 	$umur['wp']=2;
	// }else{
	// 	if ($pribadi[0]['tgl_lahir']!=null ) {
	// 		if ($pribadi[0]['id_status']==null ) {
	// 				if(umur($pribadi[0]['tgl_lahir'])>=17 ){
	// 					$umur['wp']=1;
	// 				}else{
	// 					$umur['wp']=0;	
	// 				};
	// 		}else{
	// 			if(umur($pribadi[0]['tgl_lahir'])>=17 || $pribadi[0]['id_status']!=2 ){
	// 					$umur['wp']=1;
	// 				}else{
	// 					$umur['wp']=0;	
	// 				};	
	// 		}
	// 	}else{
	// 		if($pribadi[0]['id_status']!=2){
	// 					$umur['wp']=1;
	// 				}else{
	// 					$umur['wp']=0;	
	// 				};
	// 	}
	// }

	echo json_encode($pribadi[0]+$keluarga+$alamat);