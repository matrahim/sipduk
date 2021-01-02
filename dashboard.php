 <?php
  require_once 'connection.php';
  require_once 'header.php';
  ?>
 <style>
   .fixed-container {
     position: relative;
     width: 280px;
     height: 280px;
   }

   .thumb-img {
     width: 260px;
     height: 180px;
     object-fit: fill;
   }
 </style>
 <!--Morris Chart CSS -->
 <link rel="stylesheet" href="assets/plugins/morris/morris.css">

 <div class="wrapper">
   <div class="container">

     <!-- Page-Title -->
     <div class="row">
       <div class="col-sm-12">
         <div class="btn-group pull-right m-t-15">
           <button type="button" class="btn btn-custom dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Settings <span class="m-l-5"><i class="fa fa-cog"></i></span></button>
           <ul class="dropdown-menu" role="menu">
             <li><a onclick="ambilGambar(1)" data-toggle="modal" data-target="#UabhFoto" href="#">Gambar 1</a></li>
             <li><a onclick="ambilGambar(2)" data-toggle="modal" data-target="#UabhFoto" href="#">Gambar 2</a></li>
             <li><a onclick="ambilGambar(3)" data-toggle="modal" data-target="#UabhFoto" href="#">Gambar 3</a></li>
             <li><a onclick="ambilGambar(4)" data-toggle="modal" data-target="#UabhFoto" href="#">Gambar 4</a></li>
           </ul>
         </div>
         <h4 class="page-title">Dashboard</h4>
       </div>
     </div>


     <div class="row port m-b-20">
       <div class="portfolioContainer">

         <div class="col-sm-12 col-lg-3 col-md-4 ">
           <div class="gal-detail thumb fixed-container">
             <a href="assets/images/load.gif" class="image-popup" title="Screenshot-1">
               <img src="assets/images/load.gif" class="thumb-img" alt="work-thumbnail">
             </a>
             <h4>Loading ....</h4>
             <p class="text-muted">
               Loading ....
             </p>
           </div>
         </div>

         <div class="col-sm-12 col-lg-3 col-md-4">
           <div class="gal-detail thumb fixed-container">
             <a href="assets/images/load.gif" class="image-popup" title="Screenshot-2">
               <img src="assets/images/load.gif" class="thumb-img" alt="work-thumbnail">
             </a>
             <h4>Loading ....</h4>
             <p class="text-muted">
               Loading ....
             </p>
           </div>
         </div>

         <div class="col-sm-12 col-lg-3 col-md-4">
           <div class="gal-detail thumb fixed-container">
             <a href="assets/images/load.gif" class="image-popup" title="Screenshot-3">
               <img src="assets/images/load.gif" class="thumb-img" alt="work-thumbnail">
             </a>
             <h4>Loading ....</h4>
             <p class="text-muted">
               Loading ....
             </p>
           </div>
         </div>

         <div class="col-sm-12 col-lg-3 col-md-4">
           <div class="gal-detail thumb fixed-container">
             <a href="assets/images/load.gif" class="image-popup" title="Screenshot-4">
               <img src="assets/images/load.gif" class="thumb-img" alt="work-thumbnail">
             </a>
             <h4>Loading ....</h4>
             <p class="text-muted">
               Loading ....
             </p>
           </div>
         </div>


       </div><!-- end portfoliocontainer-->
     </div> <!-- End row -->

     <div class="row">
       <div class="col-lg-4 col-md-6">
         <div class="card-box">

           <h4 class="header-title m-t-0 m-b-30">Total Data Penduduk</h4>

           <div class="widget-chart-1">
             <div class="widget-chart-box-1">
               <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#1c62f2 " data-bgColor="#c2f9b9" value="100" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".15" />
             </div>

             <div class="widget-detail-1">
               <h2 class="p-t-10 m-b-0"> <?= count(getListQuery("SELECT * FROM penduduk")) ?> </h2>
               <p class="text-muted">Per <?= date("m M Y") ?></p>
             </div>
           </div>
         </div>
       </div><!-- end col -->

       <div class="col-lg-4 col-md-6">
         <div class="card-box">

           <h4 class="header-title m-t-0 m-b-30">Total Data Keluarga</h4>

           <div class="widget-chart-1">
             <div class="widget-chart-box-1">
               <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#02d0ce " data-bgColor="#c2f9b9" value="100" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".15" />
             </div>

             <div class="widget-detail-1">
               <h2 class="p-t-10 m-b-0"> <?= count(getListQuery("SELECT * FROM kk")) ?> </h2>
               <p class="text-muted">Per <?= date("m M Y") ?></p>
             </div>
           </div>
         </div>
       </div><!-- end col -->

       <div class="col-lg-4 col-md-6">
         <div class="card-box">

           <h4 class="header-title m-t-0 m-b-30">Total Data Wajib Pilih</h4>

           <div class="widget-chart-1">
             <div class="widget-chart-box-1">
               <input data-plugin="knob" data-width="80" data-height="80" data-fgColor="#00cc60 " data-bgColor="#8addb1" value="<?= round(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) >='17'")) / count(getListQuery("SELECT * FROM penduduk")) * 100) ?>%" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".15" />
             </div>

             <div class="widget-detail-1">
               <h2 class="p-t-10 m-b-0"> <?= count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) >='17'")) ?> </h2>
               <p class="text-muted">Per <?= date("m M Y") ?></p>
             </div>
           </div>
         </div>
       </div><!-- end col -->
     </div>
     <!-- end row -->

     <div class="row">
       <div class="col-lg-4 col-md-6">
         <div class="card-box">
           <?php
            function hitungPersen($val)
            {
              $total = count(getListQuery("SELECT * FROM penduduk"));
              $hasil = number_format(($val / $total) * 100, 2, '.', '');
              // number_format((float)$number, 2, '.', '');
              return $hasil . '%';
            }

            function hitungPersenwp($val)
            {
              $total = count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) >='17' "));
              // $total = count(getListQuery("SELECT * FROM penduduk"));
              $hasil = number_format(($val / $total) * 100, 2, '.', '');
              // number_format((float)$number, 2, '.', '');
              return $hasil . '%';
            }

            $p = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE jk='P'")));
            $l = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE jk='L'")));
            $u = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE jk IS NULL")));

            $pwp = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) >='17' AND jk='P'")));
            $lwp = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) >='17' AND jk='L'")));
            $uwp = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) >='17' AND jk IS NULL")));

            ?>

           <h4 class="header-title m-t-0 m-b-30">Data Penduduk Berdasarkan Jenis Kelamin</h4>

           <p class="font-600 m-b-5">Perempuan <span class="text-pink pull-right"><?= $p ?></span></p>
           <div class="progress progress-bar-pink-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-pink progress-animated wow animated animated" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: <?= $p ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-pink -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Laki- laki <span class="text-info pull-right"><?= $l ?></span></p>
           <div class="progress progress-bar-info-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-info progress-animated wow animated animated" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: <?= $l ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-info -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-14">Tidak Diketahui<span class="text-danger pull-right"><?= $u ?></span></p>
           <div class="progress progress-bar-danger-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-danger progress-animated wow animated animated" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: <?= $u ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-warning -->
           </div><!-- /.progress .no-rounded -->


           <h4 class="header-title m-t-0 m-b-30">Data Wajib Pilih Berdasarkan Jenis Kelamin</h4>


           <p class="font-600 m-b-5">Perempuan <span class="text-pink pull-right"><?= $pwp ?></span></p>
           <div class="progress progress-bar-pink-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-pink progress-animated wow animated animated" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: <?= $pwp ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-pink -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Laki- laki <span class="text-info pull-right"><?= $lwp ?></span></p>
           <div class="progress progress-bar-info-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-info progress-animated wow animated animated" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: <?= $lwp ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-info -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Tidak Diketahui<span class="text-danger pull-right"><?= $uwp ?></span></p>
           <div class="progress progress-bar-danger-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-danger progress-animated wow animated animated" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: <?= $uwp ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-warning -->
           </div><!-- /.progress .no-rounded -->

         </div>
       </div><!-- end col -->


       <div class="col-lg-4 col-md-6">
         <div class="card-box">

           <?php

            $islam = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE id_agama=1")));
            $kristen = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE id_agama=2")));
            $katolik    = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE id_agama=3")));
            $hindu  = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE id_agama=4")));
            $buddha = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE id_agama=5")));
            $konghucu   = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE id_agama=6")));
            $unknow = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE id_agama=7 OR id_agama IS NULL ")));

            ?>

           <h4 class="header-title m-t-0 m-b-30">Data Penduduk Berdasarkan Agama</h4>

           <p class="font-600 m-b-5">Islam <span class="text-success pull-right"><?= $islam ?></span></p>
           <div class="progress progress-bar-success-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-success progress-animated wow animated animated" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: <?= $islam ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-danger -->
           </div><!-- /.progress .no-rounded -->


           <p class="font-600 m-b-5">Kristen <span class="text-info pull-right"><?= $kristen ?></span></p>
           <div class="progress progress-bar-info-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-info progress-animated wow animated animated" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: <?= $kristen ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-info -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Katolik <span class="text-pink pull-right"><?= $katolik ?></span></p>
           <div class="progress progress-bar-pink-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-pink progress-animated wow animated animated" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: <?= $katolik ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-pink -->
           </div><!-- /.progress .no-rounded -->
           <p class="font-600 m-b-5">Hindu <span class="text-warning pull-right"><?= $hindu ?></span></p>
           <div class="progress progress-bar-warning-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-warning progress-animated wow animated animated" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: <?= $hindu ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-warning -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Buddha <span class="text-primary pull-right"><?= $buddha ?></span></p>
           <div class="progress progress-bar-primary-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-primary progress-animated wow animated animated" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: <?= $buddha ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-warning -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Kong Hu Cu <span class="text pull-right"><?= $konghucu ?></span></p>
           <div class="progress progress-bar-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar progress-animated wow animated animated" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: <?= $konghucu ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-success -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Tidak Ditekatui <span class="text-danger pull-right"><?= $unknow ?></span></p>
           <div class="progress progress-bar-danger-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-danger progress-animated wow animated animated" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: <?= $unknow ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-success -->
           </div><!-- /.progress .no-rounded -->


         </div>
       </div>

       <div class="col-lg-4 col-md-6">
         <div class="card-box">

           <?php

            $u17 = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) ='17' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='18' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='19' ")));
            $u20 = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) ='20' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='21' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='22' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='23' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='24' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='25' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='26' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='27' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='28' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='29' ")));
            $u30 = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) ='30' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='31' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='32' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='33' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='34' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='35' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='36' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='37' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='38' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='39' ")));
            $u40  = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) ='40' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='41' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='42' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='43' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='44' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='45' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='46' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='47' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='48' OR YEAR(CURDATE()) - YEAR(tgl_lahir) ='49' ")));
            $u50 = hitungPersenwp(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) >='50'  ")));
            $tms   = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE YEAR(CURDATE()) - YEAR(tgl_lahir) <'17'AND id_status='2' ")));
            $unknow = hitungPersen(count(getListQuery("SELECT * FROM penduduk WHERE tgl_lahir IS NULL AND id_status IS NULL ")));

            ?>

           <h4 class="header-title m-t-0 m-b-30">Persentase Data Pemilih Berdasarkan Umur</h4>

           <p class="font-600 m-b-5"> 17-19 <span class="text-success pull-right"><?= $u17 ?></span></p>
           <div class="progress progress-bar-success-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-success progress-animated wow animated animated" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: <?= $u17 ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-danger -->
           </div><!-- /.progress .no-rounded -->


           <p class="font-600 m-b-5"> 20-29 <span class="text-info pull-right"><?= $u20 ?></span></p>
           <div class="progress progress-bar-info-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-info progress-animated wow animated animated" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: <?= $u20 ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-info -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5"> 30-39 <span class="text-pink pull-right"><?= $u30 ?></span></p>
           <div class="progress progress-bar-pink-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-pink progress-animated wow animated animated" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: <?= $u30 ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-pink -->
           </div><!-- /.progress .no-rounded -->
           <p class="font-600 m-b-5"> 40-49 <span class="text-warning pull-right"><?= $u40 ?></span></p>
           <div class="progress progress-bar-warning-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-warning progress-animated wow animated animated" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: <?= $u40 ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-warning -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5"> >= 50 <span class="text-primary pull-right"><?= $u50 ?></span></p>
           <div class="progress progress-bar-primary-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-primary progress-animated wow animated animated" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: <?= $u50 ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-warning -->
           </div><!-- /.progress .no-rounded -->


           <p class="font-600 m-b-5">Di Bawa Umur (TMS) <span class="text-danger pull-right"><?= $tms ?></span></p>
           <div class="progress progress-bar-danger-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-danger progress-animated wow animated animated" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: <?= $tms ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-success -->
           </div><!-- /.progress .no-rounded -->

           <p class="font-600 m-b-5">Tidak Ditekatui <span class="text-danger pull-right"><?= $unknow ?></span></p>
           <div class="progress progress-bar-danger-alt progress-sm m-b-20">
             <div class="progress-bar progress-bar-danger progress-animated wow animated animated" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: <?= $unknow ?>; visibility: visible; animation-name: animationProgress;">
             </div><!-- /.progress-bar .progress-bar-success -->
           </div><!-- /.progress .no-rounded -->


         </div>
       </div>

     </div>
     <!-- end row -->



     <?php
      require_once 'footer.php';
      ?>
     <script src="assets/plugins/morris/morris.min.js"></script>
     <script src="assets/plugins/raphael/raphael-min.js"></script>

     <!-- Dashboard init -->
     <script src="assets/pages/jquery.dashboard.js"></script>

     <script>
       $(window).load(loadHd());
     </script>