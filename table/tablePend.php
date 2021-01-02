 <?php
    ini_set('display_errors', 'Off');
    error_reporting(0);

    // require_once "../connection.php"; 
    $aColumns = array('a.id_penduduk','a.id_kk','a.nik','a.nama','a.tempat_lahir','a.tgl_lahir','a.jk','a.id_agama','a.id_shdk','a.id_status','b.no_kk','b.id_dusun','b.rt','b.rw','c.nama_agama','d.nama_shdk','e.nama_status');
    $arrColumns = array('id_penduduk','id_kk','nik','nama','tempat_lahir','tgl_lahir','jk','id_agama','id_shdk','id_status','no_kk','id_dusun','rt','rw','nama_agama','nama_shdk','nama_status');
    $sIndexColumn = 'a.id_penduduk';
    $sTable = "penduduk a";
    $sWhere = "";
    $sJoin = "LEFT JOIN (SELECT id_kk, no_kk,id_dusun,rt,rw FROM kk) AS b
            ON (a.id_kk=b.id_kk)
            LEFT JOIN (SELECT id_agama, nama_agama FROM agama) AS c
            ON (a.id_agama=c.id_agama)
            LEFT JOIN (SELECT id_shdk, nama_shdk FROM shdk) AS d
            ON (a.id_shdk=d.id_shdk)
            LEFT JOIN (SELECT id_status, nama_status FROM status) AS e
            ON (a.id_status=e.id_status)
            ";
    $mr = "id_penduduk"; // <---id yang primarykey
    // $sOrder = "";
    require_once 'dataTableSource.php';
    for ($i=0;$i<count($aRow);$i++){
        $rows = array();
        $rows[] = $aRow[$i]['nama']; 
        $rows[] = $aRow[$i]['no_kk'];
        $rows[] = $aRow[$i]['nik'];
        $rows[] = $aRow[$i]['tempat_lahir']." ".GetTglIndo($aRow[$i]['tgl_lahir']); 
        $rows[] = CekJK($aRow[$i]['jk']); 
        $rows[] = $aRow[$i]['nama_agama'];
        $rows[] = $aRow[$i]['nama_shdk'];  
        $rows[] = $aRow[$i]['nama_status'];
        $rows[] = '<button data-toggle="modal" data-target="#editPendModal" onclick="IsiDataPend('.$aRow[$i]['id_penduduk'].')" class="btn btn-primary waves-effect waves-light m-b-5"> <span>Detail</span> <i class="fa fa-vcard-o  "></i> </button><button onclick="HapusDataPend('.$aRow[$i]['id_penduduk'].')" class="btn btn-danger waves-effect waves-light m-b-5"> <span>Hapus</span> <i class="fa fa-window-close "></i> </button>';

        
        $output['aaData'][] = $rows;
    } 
    echo json_encode( $output );
?> 
 