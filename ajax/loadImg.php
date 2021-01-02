 <?php 
	require_once '../connection.php';
	$id = getQuote($_POST['id']);

	$data = getListQuery("SELECT * FROM profil_gambar WHERE id=".$id);
	
	echo json_encode($data[0]);
 ?>