<?php 
	require_once '../../connection.php';
	$res = getListQuery("SELECT * FROM penduduk 
						LEFT JOIN kk ON penduduk.id_kk = kk.Id_kk
						LEFT JOIN agama ON penduduk.id_agama = agama.Id_agama
						LEFT JOIN shdk ON penduduk.id_shdk = shdk.Id_shdk
						LEFT JOIN status ON penduduk.id_status = status.Id_status
						LEFT JOIN dusun ON kk.id_dusun = dusun.Id_dusun
						");

 ?>

<table border="1">
	<tr>
		<th>NO.</th>
		<th>NO KK</th>	
		<th>NIK</th>
		<th>NAMA LENGKAP</th>
		<th>TEMPAT LAHIR</th>
		<th>TGL LAHIR</th>
		<th>JENIS KELAMIN</th>
		<th>AGAMA</th>
		<th>PEKERJAAN</th>
		<th>SHDK</th>
		<th>STATUS</th>
		<th>NAMA DUSUN</th>
		<th>RT</th>
		<th>RW</th>
	</tr>
	<?php
	
	$no = 1;
	foreach ($res as $data) {
		echo '
		<tr>
			<td>'.$no.'</td>
			<td>'."'".strval($data['no_kk']).'</td>
			<td>'."'".strval($data['nik']).'</td>
			<td>'.$data['nama'].'</td>
			<td>'.$data['tempat_lahir'].'</td>
			<td>'.$data['tgl_lahir'].'</td>
			<td>'.$data['jk'].'</td>
			<td>'.$data['nama_agama'].'</td>
			<td>'.$data['pekerjaan'].'</td>
			<td>'.$data['nama_shdk'].'</td>
			<td>'.$data['nama_status'].'</td>
			<td>'.$data['nama_dusun'].'</td>
			<td>'.$data['rt'].'</td>
			<td>'.$data['rw'].'</td>
		</tr>
		';
		$no++;
	}


	?>
</table>