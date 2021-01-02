 <?php 
  
    require_once 'connection.php';
    require_once 'header.php';
 ?>
        <div class="wrapper">
            <div class="container">

                <!-- Page-Title -->
                <div class="row"> 
                    <div class="col-sm-12">   
                        <h4 class="page-title">Data Surat Keluar (Surat Keterangan Domisili & Surat Keterangan Tidak Mampu) Desa Tangkau</h4>
                    </div>
                </div>


                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box table-responsive">
                           
                        
                            <h4 class="header-title m-t-0 m-b-30">
                                <button data-toggle="modal" data-target="#tambahSrtModal" class="btn btn-info waves-effect waves-light m-b-5"> <i class="zmdi zmdi-email"></i> <span> Buat Surat</span> </button>
                                <!-- <button data-toggle="modal" data-target="#editPendModal" onclick="IsiDataPend('.$aRow[$i]['id_penduduk'].')" class="btn btn-primary waves-effect waves-light m-b-5"> <span>Detail</span> <i class="fa fa-vcard-o  "></i> </button> -->
                            </h4>

                            <table style="font-size: 12px" id="datatableSrtKluar" class="table table-striped table-bordered">
                                <thead >
                                    <tr>
                                        <th>Nomor Surat</th>
                                        <th>Jenis Surat</th>
                                        <th>Nama</th>
                                        <th>Tgl Surat</th>
                                        <th width="25%">Option</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div><!-- end col -->
                </div>
                <!-- end row -->

 <?php 
    require_once 'footer.php';
  ?>