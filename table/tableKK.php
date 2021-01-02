 <?php
    ini_set('display_errors', 'Off');
    error_reporting(0);

    // require_once "../connection.php"; 
    $aColumns = array('a.Id_kk','a.no_kk','a.id_dusun','a.rt','a.rw','b.id_dusun','b.nama_dusun','c.id_kk','c.nama_pend','c.id_shdk');
    $arrColumns = array('Id_kk','no_kk','id_dusun','rt','rw','id_dusun','nama_dusun','id_kk','nama_pend','id_shdk');
    $sIndexColumn = 'a.Id_kk';
    $sTable = "kk a";
    $sWhere = "";
    $sJoin = "LEFT JOIN (SELECT Id_dusun, nama_dusun FROM dusun) AS b
            ON (a.id_dusun=b.Id_dusun)
            LEFT JOIN (SELECT id_kk, nama as nama_pend,id_shdk FROM penduduk) AS c
            ON (a.Id_kk=c.id_kk AND c.id_shdk='1')
        
            ";
    $mr = "a.Id_kk"; // <---id yang primarykey
    // $sOrder = "";
    require_once 'dataTableSource.php';
    for ($i=0;$i<count($aRow);$i++){
        $rows = array();
        $rows[] = $aRow[$i]['nama_pend']; 
        $rows[] = $aRow[$i]['no_kk'];
        $rows[] = $aRow[$i]['nama_dusun'];
        $rows[] = $aRow[$i]['rt']; 
        $rows[] = $aRow[$i]['rw'];
        
        $rows[] = '<button data-toggle="modal" data-target="#editKKModal" onclick="IsiDataKK('.$aRow[$i]['Id_kk'].')" class="btn btn-primary waves-effect waves-light m-b-5"> <span>Detail</span> <i class="fa fa-vcard-o  "></i> </button> <button onclick="HapusDataKK('.$aRow[$i]['Id_kk'].')" class="btn btn-danger waves-effect waves-light m-b-5"> <span>Hapus</span> <i class="fa fa-window-close "></i> </button>';

        
        $output['aaData'][] = $rows;
    } 
    echo json_encode( $output );
?> 
 