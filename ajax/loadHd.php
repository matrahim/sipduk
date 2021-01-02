 <?php 
	require_once '../connection.php';
	// $idsrt = getQuote($_POST['id']);

	$data = getListQuery("SELECT * FROM profil_gambar");
	
	echo json_encode($data);
 ?>