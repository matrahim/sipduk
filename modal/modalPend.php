    <!-- edit penduduk -->
    <style>
        .slow .toggle-group { transition: left 0.7s; -webkit-transition: left 0.7s; }
    </style>
    <div id="editPendModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromDataPend">
            
        <div class="modal-lg modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 style="display: inline;padding-right: 65%" class="modal-title tulisan_head">Detail Data Penduduk</h4>
          
                
                   <!-- <input  > -->
                   <input id='swt' data-style="slow" checked data-toggle="toggle" data-on="Edit" data-off="View" data-onstyle="success" data-offstyle="info" type="checkbox">
                            <!-- <input type="checkbox" class="switchery" id="swt"/> -->
                
                
                </div>
                    <input type="hidden" id="id_pend" name="id_pend">
                <div class="modal-body" >
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="nik" class="control-label">NIK</label>
                                <input type="text" class="form-control" id="nik" name="nik" placeholder="Nomor Induk KTP">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="nama_pend" class="control-label">Name</label>
                                <input required type="text" class="form-control" id="nama_pend" name="nama_pend" placeholder="Nama Penduduk">
                            </div>
                        </div>
           
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="nkk" class="control-label">NKK</label>
                                <!-- <input type="text" class="form-control"  placeholder=""> -->
      <!--                           <select class="form-control select2" id="nkk" -->
                                  <select style="font-size: 12px" class="form-control" id="nkk" name="nkk">
                                      <option value="">-- Pilih KK --</option>

                                      
                                   
                                  </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="tempat_lahir" class="control-label">Tempat Lahir</label>
                                <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir" placeholder="Tempat Lahir">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="tgl_lahir" class="control-label">Tanggal Lahir</label>
                                 <input type="date"   class="form-control"  id="tgl_lahir" name="tgl_lahir" style="width:69%;display:inline;">
                                <!-- <input type="text" class="form-control"  placeholder="Tanggal Lahir"> -->
                                <button style="width:29%;display:inline; " id="resE" type="button"  class="btn btn-info waves-effect waves-light ResTgl">Reset</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="agama" class="control-label">Agama</label>
                                 <select style="font-size: 12px" class="form-control" id="agama" name="agama">
                                      <option value="">-- Pilih Agama --</option>
                                      <?php $q = getListQuery("SELECT * FROM agama") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_agama']?>"><?=$val['nama_agama']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                                <!-- <input type="text" class="form-control" id="agama" placeholder="Agama"> -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                       <div class="col-md-4">
                            <div class="form-group">
                                <label for="jk" class="control-label">Jenis Kelamin</label><br>
                                <div class="radio  radio-inline">
                                    <input type="radio" id="jk1" value="L" name="jk" >
                                    <label for="jk1"> Laki-laki </label>
                                </div>
                                <div class="radio radio-pink radio-inline">
                                    <input type="radio" id="jk2" value="P" name="jk" >
                                    <label for="jk2"> Perempuan </label>
                                </div>
                                <!-- <input type="text" class="form-control" id="jk" > -->
                            </div>
                        </div>
                      
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="pekerjaan" class="control-label">Pekerjaan</label>
                                <input type="text" class="form-control" id="pekerjaan" name="pekerjaan" placeholder="Perkerjaan">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                  <label for="shdk" class="control-label">Status Hubungan Dalam Keluarga</label>
                                  <select  class="form-control" id="shdk" name="shdk">
                                      <option value="">-- Pilih SHDK --</option>
                                      <?php $q = getListQuery("SELECT * FROM shdk") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_shdk']?>"><?=$val['nama_shdk']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="status" class="control-label">Status</label>
                                <select  class="form-control" id="status" name="status">
                                      <option value="">-- Pilih Status --</option>
                                      <?php $q = getListQuery("SELECT * FROM status") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_status']?>"><?=$val['nama_status']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                                <!-- <input type="text" class="form-control" id="status" placeholder="Status"> -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">

                                        <!-- <div class="col-lg-4"> -->
                                            <!-- <div class=""> -->
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Alamat</h3>
                                                </div>
                                                <div class="panel-body">
                                                    Dusun : <span class="alamat_dusn"></span> <br>
                                                    RT :    <span class="alamat_rt"></span> <br>
                                                    RW :    <span class="alamat_rw"></span> <br>
                                                    Desa :  <span class="alamat_desa">Tangkau</span> <br>
                                                    Kabupaten : <span class="alamat_desa">Mamuju Tengah</span> <br>
                                                    Provinsi : <span class="alamat_desa">Sulawesi Barat</span> <br>
                                                </div>
                                            <!-- </div> -->
                                        <!-- </div> -->
                                        <!-- end col -->
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">

                                      <div class="card-box">
                                            <h4 class="header-title m-t-0 m-b-30">Anggota keluarga</h4>
                                            <table class="table m-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Nama</th>
                                                        <th>SHDK</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="isiDatakeluarga">
                                                   
                                                </tbody>
                                            </table>
                                        </div>


                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="tmb_penduduk" class="btn btn-info waves-effect waves-light">Update</button>
                </div>
            </div>
        </div>
        </form>
    </div><!-- /.modal -->
    


   <!-- tambah penduduk -->

    <div id="tambahPendModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromTDataPend">
            
        <div class="modal-lg modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 style="display: inline;padding-right: 65%" class="modal-title tulisan_head">Tambah Data Penduduk</h4>
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="nik" class="control-label">NIK</label>
                                <input type="text" class="form-control" id="Tnik" name="nik" placeholder="Nomor Induk KTP">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="nama_pend" class="control-label">Name</label>
                                <input required type="text" class="form-control" id="Tnama_pend" name="nama_pend" placeholder="Nama Penduduk">
                            </div>
                        </div>
          
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="nkk" class="control-label">NKK</label>
                                <!-- <input type="text" class="form-control"  placeholder=""> -->
      <!--                           <select class="form-control select2" id="nkk" -->
                                  <select style="font-size: 12px" class="form-control" id="Tnkk" name="nkk">
                                      <option value="">-- Pilih KK --</option>

                                      
                                   
                                  </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="tempat_lahir" class="control-label">Tempat Lahir</label>
                                <input type="text" class="form-control" id="Ttempat_lahir" name="tempat_lahir" placeholder="Tempat Lahir">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="tgl_lahir" class="control-label">Tanggal Lahir</label>
                                 <input type="date"   class="form-control"  id="Ttgl_lahir" name="tgl_lahir" style="width:69%;display:inline; ">
                                <!-- <input type="text" class="form-control"  placeholder="Tanggal Lahir"> -->
                                <button style="width:29%;display:inline; " type="button"  class="btn btn-info waves-effect waves-light ResTgl">Reset</button>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="agama" class="control-label">Agama</label>
                                 <select style="font-size: 12px" class="form-control" id="Tagama" name="agama">
                                      <option value="">-- Pilih Agama --</option>
                                      <?php $q = getListQuery("SELECT * FROM agama") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_agama']?>"><?=$val['nama_agama']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                                <!-- <input type="text" class="form-control" id="agama" placeholder="Agama"> -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                       <div class="col-md-4">
                            <div class="form-group">
                                <label for="jk" class="control-label">Jenis Kelamin</label><br>
                                <div class="radio  radio-inline">
                                    <input type="radio" id="Tjk1" value="L" name="Tjk" >
                                    <label for="Tjk1"> Laki-laki </label>
                                </div>
                                <div class="radio radio-pink radio-inline">
                                    <input type="radio" id="Tjk2" value="P" name="Tjk" >
                                    <label for="Tjk2"> Perempuan </label>
                                </div>
                                <!-- <input type="text" class="form-control" id="jk" > -->
                            </div>
                        </div>
                        
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="pekerjaan" class="control-label">Pekerjaan</label>
                                <input type="text" class="form-control" id="Tpekerjaan" name="pekerjaan" placeholder="Perkerjaan">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                  <label for="shdk" class="control-label">Status Hubungan Dalam Keluarga</label>
                                  <select  class="form-control" id="Tshdk" name="shdk">
                                      <option value="null">-- Pilih SHDK --</option>
                                      <?php $q = getListQuery("SELECT * FROM shdk") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_shdk']?>"><?=$val['nama_shdk']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="status" class="control-label">Status</label>
                                <select  class="form-control" id="Tstatus" name="status">
                                      <option value="">-- Pilih Status --</option>
                                      <?php $q = getListQuery("SELECT * FROM status") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_status']?>"><?=$val['nama_status']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                                <!-- <input type="text" class="form-control" id="status" placeholder="Status"> -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">

                                        <!-- <div class="col-lg-4"> -->
                                            <!-- <div class=""> -->
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Alamat</h3>
                                                </div>
                                                <div class="panel-body">
                                                    Dusun : <span class="Talamat_dusn"></span> <br>
                                                    RT :    <span class="Talamat_rt"></span> <br>
                                                    RW :    <span class="Talamat_rw"></span> <br>
                                                    Desa :  <span class="alamat_desa">Tangkau</span> <br>
                                                    Kabupaten : <span class="alamat_desa">Mamuju Tengah</span> <br>
                                                    Provinsi : <span class="alamat_desa">Sulawesi Barat</span> <br>
                                                </div>
                                            <!-- </div> -->
                                        <!-- </div> -->
                                        <!-- end col -->
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">

                                      <div class="card-box">
                                            <h4 class="header-title m-t-0 m-b-30">Anggota keluarga</h4>
                                            <table class="table m-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Nama</th>
                                                        <th>SHDK</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="TisiDatakeluarga">
                                                   
                                                </tbody>
                                            </table>
                                        </div>


                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="Ttmb_penduduk" class="btn btn-info waves-effect waves-light">Tambah</button>
                </div>
            </div>
        </div>
        </form>
    </div><!-- /.modal -->
    