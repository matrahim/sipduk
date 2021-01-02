
   <!-- tambah kk -->

    <div id="tambahKKModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromTDataKK">
            
        <div class="modal-lg modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 style="display: inline;padding-right: 65%" class="modal-title tulisan_head">Tambah Data KK</h4>
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="no_kk" class="control-label">No Kartu Keluarga</label>
                                <input required type="text" class="form-control" id="Tno_kk" name="no_kk" placeholder="No Kartu Keluarga">
                            </div>
                        </div>
          
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="list_pend" class="control-label">Kepala Keluarga</label>
                                <!-- <input type="text" class="form-control"  placeholder=""> -->
      <!--                           <select class="form-control select2" id="pend" -->
                                  <select style="font-size: 14px" class="form-control" id="list_pend" name="list_pend">
                                      <option value="">-- Pilih Kepala Keluarga --</option>

                                  </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="dusun" class="control-label">Dusun</label>
                                <select  class="form-control" id="Tdusun" name="dusun">
                                      <option value="">-- Pilih Dusun --</option>
                                      <?php $q = getListQuery("SELECT * FROM dusun") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_dusun']?>"><?=$val['nama_dusun']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="rt" class="control-label">RT</label>
                                <input type="number" class="form-control" id="Trt" name="rt" max="09" min="01" placeholder="Rukun Tetangga">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="rw" class="control-label">RW</label>
                                 <input type="number" class="form-control"  id="Trw" name="rw" max="09" min="01" placeholder="Rukun Warga">
                                
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
                                                <tbody id="TisiDatakeluargaKK">
                                                   
                                                </tbody>
                                            </table>
                                        </div>


                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="Ttmb_kk" class="btn btn-info waves-effect waves-light">Tambah</button>
                </div>
            </div>
        </div>
        </form>
    </div><!-- /.modal -->
    

    <!-- edit kk -->

    <div id="editKKModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromEDataKK">
            
        <div class="modal-lg modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 style="display: inline;padding-right:70%" class="modal-title tulisan_head">Edit Data KK</h4>
                    <input id='Kswt' data-style="slow" checked data-toggle="toggle" data-on="Edit" data-off="View" data-onstyle="success" data-offstyle="info" type="checkbox">
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="hidden" name="eid_kk" id="Eid_kk">
                                <label for="no_kk" class="control-label">No Kartu Keluarga</label>
                                <input required type="text" class="form-control" id="Eno_kk" name="no_kk" placeholder="No Kartu Keluarga">
                            </div>
                        </div>
          
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="list_pend" class="control-label">Kepala Keluarga</label>
                                <!-- <input type="text" class="form-control"  placeholder=""> -->
      <!--                           <select class="form-control select2" id="pend" -->
                                  <select style="font-size: 14px" class="form-control" id="Elist_pend" name="list_pend">
                                      <option value="">-- Pilih Kepala Keluarga --</option>

                                  </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="dusun" class="control-label">Dusun</label>
                                <select  class="form-control" id="Edusun" name="dusun">
                                      <option value="">-- Pilih Dusun --</option>
                                      <?php $q = getListQuery("SELECT * FROM dusun") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_dusun']?>"><?=$val['nama_dusun']?></option>
                                            <?php endforeach; ?>
                                   
                                  </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="rt" class="control-label">RT</label>
                                <input type="number" class="form-control" id="Ert" name="rt" max="09" min="01" placeholder="Rukun Tetangga">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="rw" class="control-label">RW</label>
                                 <input type="number" class="form-control"  id="Erw" name="rw" max="09" min="01" placeholder="Rukun Warga">
                                
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
                                                <tbody id="EisiDatakeluargaKK">
                                                   
                                                </tbody>
                                            </table>
                                        </div>


                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="Etmb_kk" class="btn btn-info waves-effect waves-light">Update</button>
                </div>
            </div>
        </div>
        </form>
    </div><!-- /.modal -->
    