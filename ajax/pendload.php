<?php
require_once '../connection.php';
// var_dump($_POST);
$id = getListQuery("SELECT * FROM penduduk WHERE id_shdk='1' ");
?>
<option value="">-- Pilih Kepala Keluaraga --</option>
<?php
# code...
foreach ($id as $val) : ?>
  <option value="<?= $val['Id_penduduk'] ?>"><?= $val['nama'] ?> - <?= $val['nik'] ?></option>
<?php
endforeach;

?>