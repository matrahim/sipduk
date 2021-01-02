
   <!-- tambah srt -->

    <div id="tambahSrtModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromTDataSrt">
            
        <div class="modal-lg modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 style="display: inline;padding-right: 65%" class="modal-title tulisan_head">Buat Surat Keluar</h4>
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="no_srt" class="control-label">Nomor Surat</label>
                                <input required type="number" class="form-control" id="no_srt" name="no_srt" placeholder="No Surat Keluar">
                            </div>
                        </div>
          
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="js" class="control-label">Jenis Surat</label>
                                <!-- <input type="text" class="form-control"  placeholder=""> -->
      <!--                           <select class="form-control select2" id="pend" -->
                                  <select required style="font-size: 14px" class="form-control" id="js" name="js">
                                      <option value="">-- Pilih Jenis Surat --</option>
                                      <?php $q = getListQuery("SELECT * FROM jenis_surat") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_jenissurat']?>"><?=$val['nama_jenissurat']?></option>
                                            <?php endforeach; ?>
                                  </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="pddk" class="control-label">Nama Penduduk</label>
                                <select required  class="form-control" id="pddk" name="pddk">
                                      <option  value="">-- Pilih Penduduk --</option>
                                   
                                  </select>
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="form-group">
                                <label for="tgl_srt" class="control-label">Tanggal Surat</label>
                                 <input type="date" required  class="form-control"  id="tgl_srt" name="tgl_srt" >
                            </div>
                        </div>
                        
                       
                    </div>
             
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="bSrt" class="btn btn-info waves-effect waves-light">Buat</button>
                </div>
            </div>
        </div>
        </form>
    </div><!-- /.modal -->
    

    <!-- edit srt -->
 <div id="editsrtModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromEDataSrt">
            
        <div class="modal-lg modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 style="display: inline;padding-right: 65%" class="modal-title tulisan_head">Edit Surat Keluar</h4>
                     <input id='Srtswt' data-style="slow" checked data-toggle="toggle" data-on="Edit" data-off="View" data-onstyle="success" data-offstyle="info" type="checkbox">
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="hidden" name="id_srt" id="id_srt">
                                <label for="Eno_srt" class="control-label">Nomor Surat</label>
                                <input required type="number" class="form-control" id="Eno_srt" name="Eno_srt" placeholder="No Surat Keluar">
                            </div>
                        </div>
          
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="Ejs" class="control-label">Jenis Surat</label>
                                <!-- <input type="text" class="form-control"  placeholder=""> -->
      <!--                           <select class="form-control select2" id="pend" -->
                                  <select required style="font-size: 14px" class="form-control" id="Ejs" name="Ejs">
                                      <option value="">-- Pilih Jenis Surat --</option>
                                      <?php $q = getListQuery("SELECT * FROM jenis_surat") ;
                                            foreach ($q as $val) :?>
                                      <option value="<?=$val['Id_jenissurat']?>"><?=$val['nama_jenissurat']?></option>
                                            <?php endforeach; ?>
                                  </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="Epddk" class="control-label">Nama Penduduk</label>
                                <select required  class="form-control" id="Epddk" name="Epddk">
                                      <option  value="">-- Pilih Penduduk --</option>
                                   
                                  </select>
                            </div>
                        </div>
                         <div class="col-md-6">
                            <div class="form-group">
                                <label for="Etgl_srt" class="control-label">Tanggal Surat</label>
                                 <input type="date" required  class="form-control"  id="Etgl_srt" name="Etgl_srt" >
                            </div>
                        </div>
                        
                       
                    </div>
             
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="EbSrt" class="btn btn-info waves-effect waves-light">Update</button>
                </div>
            </div>
        </div>
        </form>
    </div><!-- /.modal -->
    
