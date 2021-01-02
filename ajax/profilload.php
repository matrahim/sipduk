 <?php 
	require_once '../connection.php';

	$data = getListQuery("SELECT * FROM profil_desa");
	
	echo json_encode($data[0]);
 ?>