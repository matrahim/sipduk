 <!-- Ubah data prfil -->

    <div id="profilUbah" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromUProfil" enctype="multipart/form-data">
            <input type="hidden" id="id_" name="id_" value="1">
        <div class=" modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4  class="modal-title tulisan_head">Data Profil</h4>
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div >
                            <div class="form-group">
                                <label for="n_kades" class="control-label">Nama Kepala Desa</label>
                               <input  required type="text" class="form-control" id="n_kades" name="n_kades" placeholder="Nama Kepala Desa" >
                            </div>
                        </div>
                        <div >
                            <div class="form-group">
                                <label for="d_alamat" class="control-label">Alamat Kantor Desa</label>
                                <textarea required placeholder="Alamat Kantor Desa" id="d_alamat" class="form-control" name="d_alamat" maxlength="300" cols="10" rows="3"></textarea>
                            </div>
                        </div>

                        
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="bProf" class="btn btn-info waves-effect waves-light">Save</button>
                </div>
            </div>
        </div>
        </form> 
    </div><!-- /.modal -->
    

    

     <!-- ganti password -->

    <div id="profilUPass" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromUPass" enctype="multipart/form-data">
            <!-- <input type="hidden" id="id_" name="id_" value="1"> -->
        <div class=" modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4  class="modal-title tulisan_head">Ubah Password</h4>
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div >
                            <div id="divPL" class="form-group ">
                                <label for="pass_lama" class="control-label">Password Lama</label>
                               <input maxlength="8" minlength="4"  required type="password" class="form-control inputmask" id="pass_lama" name="pass_lama" placeholder="Password Lama" >
                                <div id="passwordHelp1" class="invisible">
                            
                              </div>
                            </div>
                        </div>
                        <div >
                            <div class="form-group">
                                <label for="pass_baru" class="control-label">Password Baru</label>
                               <input onkeyup="cekPassword()" minlength="4" maxlength="8" required type="password" class="form-control" id="pass_baru" name="pass_baru" placeholder="Password Baru" > 
                            </div>
                        </div>
                        <div >
                            <div id="divP" class="form-group">
                                <label for="pass_Ubaru" class="control-label">Ulangi Password Baru</label>
                               <input onkeyup="cekPassword()" minlength="4" maxlength="8" required type="password" class="form-control" id="pass_Ubaru" name="pass_Ubaru" placeholder="Ulangi Password Baru" >
                                <div id="passwordHelp2" class="invisible">
                               
                                 </div >
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="bPass" class="btn btn-info waves-effect waves-light">Save</button>
                </div>
            </div>
        </div>
        </form> 
    </div><!-- /.modal -->