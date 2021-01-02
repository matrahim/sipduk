<?php
    date_default_timezone_set("Asia/Makassar");
    function getHost(){ return "localhost"; };
    function getDbName(){ return "sipduk"; };
    function getUserDb(){ return "root"; }
    function getPasswordDb(){ return ""; }

    function getDb(){
      $database = new PDO("mysql:host=".getHost().";dbname=".getDbName(),getUserDb(),getPasswordDb());
      $database->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      return $database;
    }

    function getQuote($var){
        try{
            $database = getDb();
            $tmp = $database->quote($var);
            if ($database != null ){ $database = null; }
            return $tmp;
        }catch(PDOException $ex){
            echo "Terjadi kesalahan koneksi/query database <br>".$ex;
            die();
        }
    }

    function getListQuery($query){
        try{
            $database = getDb();
            $data = $database->query($query);
            $tmp = array();
            while ($row = $data->fetch(PDO::FETCH_ASSOC)){
                $tmp[] = $row;
            }
            if ($database != null ){ $database = null; }
            return $tmp;
        }catch(PDOException $ex){
            echo "Terjadi kesalahan koneksi/query database <br>".$ex;
            die();
    }
    }

    function getExeQuery($query){
        try{
            $database = getDb();
            $exec = $database->exec($query);
            if ($database != null ){ $database = null; }
            return $exec;
        }catch(PDOException $ex){
            echo "Terjadi kesalahan koneksi/query database <br>".$ex;
            die();
        }
    }


    function getBulan($query){
        switch ($query) {
            case '1':
                return "Januari";
                break;
            case '2':
                return "Februari";
                break;
            case '3':
                return "Maret";
                break;
            case '4':
                return "April";
                break;
            case '5':
                return "Mei";
                break;
            case '6':
                return "Juni";
                break;
            case '7':
                return "Juli";
                break;
            case '8':
                return "Agustus";
                break;
            case '9':
                return "September";
                break;
            case '10':
                return "Oktober";
                break;
            case '11':
                return "November";
                break;
            case '12':
                return "Desember";
                break;    
            default:
                return "Bulan Salah";
                break;
        }
    }

   function CekJK($val){
        if (!empty($val)) {
            if ($val == 'L') {
                return 'Laki-Laki';
            }else{
                return 'Perempuan';
            }
        }else{
            return '';
        }
    }

  function umur($tgl_lahir,$delimiter='-') {
    if (!empty($tgl_lahir)) {
        list($tahun,$bulan,$hari) = explode($delimiter, $tgl_lahir);
        
        $selisih_hari = date('d') - $hari;
        $selisih_bulan = date('m') - $bulan;
        $selisih_tahun = date('Y') - $tahun;
        
        if ($selisih_hari < 0 || $selisih_bulan < 0) {
            $selisih_tahun--;
        }
        
        return $selisih_tahun;
    }else{
        return null;
    }
    
}

function getBulanRomawi($query){
        switch ($query) {
            case '1':
                return "I";
                break;
            case '2':
                return "II";
                break;
            case '3':
                return "III";
                break;
            case '4':
                return "IV";
                break;
            case '5':
                return "V";
                break;
            case '6':
                return "VI";
                break;
            case '7':
                return "VII";
                break;
            case '8':
                return "VIII";
                break;
            case '9':
                return "IX";
                break;
            case '10':
                return "X";
                break;
            case '11':
                return "XI";
                break;
            case '12':
                return "XII";
                break;    
            default:
                return "Bulan Salah";
                break;
        }
    }    

    function GetTglIndo($tgl){
        if ($tgl==null) {
            return null;
        }else{
            $data =  explode('-', $tgl);
            $tahun= $data[0];
            $bulan= getBulan($data[1]);
            $hari = $data[2];
            return $hari.' '.$bulan.' '.$tahun;
        }
    }

    function GetnoSrt($no,$tgl,$js){
        $tgl = explode("-", $tgl);
        if ($js==1) {
            return "474.01"."/".$no."/".getBulanRomawi($tgl[1])."/".$tgl[0]."/D.TK";
        }
        if ($js==2) {
            return "466.01"."/".$no."/".getBulanRomawi($tgl[1])."/".$tgl[0]."/D.TK";
        }
         if ($js==3) {
            return "474.04"."/".$no."/".getBulanRomawi($tgl[1])."/".$tgl[0]."/D.TK";
        }
    }

?>
