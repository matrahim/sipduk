<?php
require_once '../connection.php';
	$id = getQuote($_GET['id']);
	$res = getListQuery("SELECT * FROM surat_keluar 
						LEFT JOIN jenis_surat ON surat_keluar.id_jenissurat = jenis_surat.Id_jenissurat
						LEFT JOIN penduduk ON surat_keluar.id_penduduk = penduduk.Id_penduduk
						LEFT JOIN kk ON penduduk.id_kk = kk.Id_kk
						LEFT JOIN agama ON penduduk.id_agama = agama.Id_agama
						LEFT JOIN dusun ON kk.id_dusun = dusun.Id_dusun
						WHERE surat_keluar.Id_sk= $id 
						");
	$Desa = getListQuery("SELECT * FROM profil_desa WHERE Id_desa='1'")[0];
	if (count($res)==0) {
		header("Location: http://localhost/_SIPDuk/");
		die();
	}
	// var_dump($res);die();
	$Id_sk =$res[0]["Id_sk"];
	$id_jenissurat =$res[0]["id_jenissurat"];
	$no_surat =$res[0]["no_surat"];
	$id_penduduk =$res[0]["id_penduduk"];
	$tgl_srt =$res[0]["tgl_srt"];
	$Id_jenissurat =$res[0]["Id_jenissurat"];
	$nama_jenissurat =$res[0]["nama_jenissurat"];;
	$Id_penduduk =$res[0]["Id_penduduk"];
	$id_kk =$res[0]["id_kk"];
	$nik =$res[0]["nik"];
	$nama =$res[0]["nama"];
	$tempat_lahir =$res[0]["tempat_lahir"];
	$tgl_lahir =$res[0]["tgl_lahir"];
	$jk =$res[0]["jk"];
	$id_agama =$res[0]["id_agama"];
	$wajib_pilih =$res[0]["wajib_pilih"];
	$pekerjaan =$res[0]["pekerjaan"];
	$id_shdk =$res[0]["id_shdk"];
	$id_status =$res[0]["id_status"];
	$nkk =  $res[0]["no_kk"];
	$agama = $res[0]["nama_agama"];
	$nama_dusun =  $res[0]["nama_dusun"];
	$rt = $res[0]["rt"];
	$rw = $res[0]["rw"];

	
	$nomorSrt 	= 'Nomor : '.GetnoSrt($no_surat,$tgl_srt,$Id_jenissurat);
	$nik		= $nik;
	$nkk		= $nkk;
	$nama		= $nama;
	$ttl		= $tempat_lahir.','.GetTglIndo($tgl_lahir);
	$agama		= $agama;
	$pekerjaan	= $pekerjaan;
	$tglSrt		= GetTglIndo($tgl_srt);;


// var_dump($total_potongan);die();
$html = '
			<style>
				*{
					font_family: times_new_roman;
					padding: 0;
					margin:0;
				}
				.head{
					text-align:center;
					padding-top: -90px;
					font-size: 20px;
				}
				.conten{
					text-align:center;
				}

			</style>
				<img  style="padding-left: 20px;" src="../img/mateng.jpg" width=80>
			<div class="head">
				<span >PEMERINTAH KABUPATEN MAMUJU TENGAH</span> <br>
				<span >KECAMATAN TOPOYO</span> <br>
				<span ><b>DESA TANGKAU</b></span><br>
				<span style="font-size: 8px;"><b><i>Alamat :'.$Desa['alamat'].'</i></b></span>
				<hr>
			</div>

			<div class="conten">
				<span style="font-size:15px"><u><b>SURAT KETERANGAN TIDAK MAMPU</b></u></span><br>
				<span>'.$nomorSrt.'</span>
			</div>

			<div class="isi" style="padding-top: 20px;padding-left: 30px;">
				<span >
					<p style="padding-left: 30px;">
					 	Yang bertanda tangan di bawah ini Kepala Desa tangkau Kecamatan Topoyo Kabupaten</span> 
					</p>
					<p style="padding-top: -10px;">
						Mamuju Tengah Provinsi Sulawesi Barat menerangkan dengan sebenarnya bahwa :
					</p>
				</span>
			</div>

			<div class="table" style="padding-left: 150px;">
				<table>
					<tr>
						<td width="200px">NIK</td>
						<td> : </td>
						<td>'.$nik.'</td>
					</tr>
					<tr>
						<td>No. KK</td>
						<td> : </td>
						<td>'.$nkk.'</td>
					</tr>
					<tr>
						<td>Nama Lengkap</td>
						<td> : </td>
						<td>'.$nama.'</td>
					</tr>
					<tr>
						<td>Tempat, Tgl.Lahir</td>
						<td> : </td>
						<td>'.$ttl.'</td>
					</tr>
					<tr>
						<td>Agama</td>
						<td> : </td>
						<td>'.$agama.'</td>
					</tr>
					<tr>
						<td>Kewarga Negaraan</td>
						<td> : </td>
						<td>WNI</td>
					</tr>
					<tr>
						<td>Pekerjaan</td>
						<td> : </td>
						<td>'.$pekerjaan.'</td>
					</tr>
				</table>
			</div>
			<div class="isi" style="padding-top: 20px;padding-left: 30px;">
				<span >
					<p style="padding-left: 30px;">
					 	Oknum tersebut Namanya diatas adalah Benar warga yang tidak mampu ( Miskin ) dan</span> 
					</p>
					<p style="padding-top: -10px;">
						berdomisili di Desa Tangkau Kecamatan Topoyo Kabupaten Mamuju Tengah Provinsi Sulawesi barat.
					</p>
					<p style="padding-left: 30px;">
						Demikian Surat Keterangan  ini dibuat untuk dipergunakan sebagai mana mestinya.
					</p>
				</span>
			</div>

			<div style="padding-left: 450px;" class="ttd">
				<table style="text-align: center;">
					<tr>
						<td>
							'.$tglSrt.'
						</td>
					</tr>
					<tr >
						<td>
							Kepala Desa Tangkau
						</td>
					</tr>
					<br><br>
					<br><br>
					
					<tr>
						<td>
							<b><u>'.$Desa['kepala_desa'].'</u></b>
						</td>
					</tr>
				</table>
			</div>

        

';



require_once __DIR__ . '/vendor/autoload.php';

$mpdf = new \Mpdf\Mpdf(['format' => 'A4']);

// $mpdf->SetHTMLFooter('<table style="font-size:10px" width="100%"><tr>
// 														<td>
														
// 														</td>
// 														<td style="text-align:center">
// 															 Halaman {PAGENO}
// 														</td>
// 														<td style="text-align:right">
// 															Instansi Kerja : Kantor Kecamatan Mamuju
// 														</td>
// 													</tr></table>
// 													');
$mpdf->use_kwt = true;  
$mpdf->AddPage('P');
$mpdf->SetTitle("SKTM_".$nama);
$mpdf->WriteHTML($html);
$mpdf->Output("SKTM: ".$nama, 'I');


 ?>