 <?php
    ini_set('display_errors', 'Off');
    error_reporting(0);

    // require_once "../connection.php"; 
    $aColumns = array('a.Id_sk','a.id_jenissurat','a.no_surat','a.id_penduduk','a.tgl_srt','b.nama_jenissurat','c.nama');
    $arrColumns = array('Id_sk','id_jenissurat','no_surat','id_penduduk','tgl_srt','nama_jenissurat','nama');
    $sIndexColumn = 'a.Id_sk';
    $sTable = "surat_keluar a";
    $sWhere = "";
    $sJoin = "LEFT JOIN (SELECT Id_jenissurat, nama_jenissurat FROM jenis_surat) AS b
            ON (a.id_jenissurat=b.Id_jenissurat)
            LEFT JOIN (SELECT Id_penduduk, nama FROM penduduk) AS c
            ON (a.id_penduduk=c.Id_penduduk)
            ";
    $sOrder = "ORDER BY Id_sk DESC";
    $mr = "Id_sk"; // <---id yang primarykey
    // $sOrder = "";
    require_once 'dataTableSource.php';
    for ($i=0;$i<count($aRow);$i++){
        $rows = array();
        $rows[] = GetnoSrt($aRow[$i]['no_surat'],$aRow[$i]['tgl_srt'],$aRow[$i]['id_jenissurat']); 
        $rows[] = $aRow[$i]['nama_jenissurat'];
        $rows[] = $aRow[$i]['nama'];
        $rows[] = GetTglIndo($aRow[$i]['tgl_srt']);
        $rows[] = '<button data-toggle="modal" data-target="#editsrtModal" onclick="IsiDataSrt('.$aRow[$i]['Id_sk'].')" class="btn btn-primary waves-effect waves-light m-b-5"> <span>Detail</span> <i class="fa fa-vcard-o  "></i> </button> <button onclick="HapusDataSrt('.$aRow[$i]['Id_sk'].')" class="btn btn-danger waves-effect waves-light m-b-5"> <span>Hapus</span> <i class="fa fa-window-close "></i> </button> <button onclick="CetakSrt('.$aRow[$i]['Id_sk'].''.",".''.$aRow[$i]['id_jenissurat'].')" class="btn btn-info waves-effect waves-light m-b-5"> <span>Cetak</span> <i class="fa fa-print "></i> </button>';

        
        $output['aaData'][] = $rows;
    } 
    echo json_encode( $output );
?> 
 