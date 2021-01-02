<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=data-penduduk-tangkau-".date('d-m-Y-h:i:s').".xls");
 
// Tambahkan table
include 'data.php';
?>