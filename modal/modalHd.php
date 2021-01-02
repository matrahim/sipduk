 <!-- tambah srt -->

    <div id="UabhFoto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
        <form id="fromTDataFoto" enctype="multipart/form-data"> 
            <input type="hidden" id="id_" name="id_" >
        <div class=" modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4  class="modal-title tulisan_head">Ubah Data Foto</h4>
                </div>
                <div class="modal-body" >
                    <div class="row">
                        <div >
                            <div class="form-group">
                                <label for="u_Foto" class="control-label">Upload Foto</label>
                                <input  type="file" class="dropify" data-allowed-file-extensions="jpg jpeg png" name="u_Foto" id="u_Foto"   data-max-file-size="2M" data-height="250" onchange="readURL(this)" />
                            </div>
                        </div>
                        <div >
                            <div class="form-group">
                                <label for="g_judul" class="control-label">Judul Foto</label>
                                <input  required type="text" class="form-control" id="g_judul" name="g_judul" placeholder="Judul Foto" max="40">
                            </div>
                        </div>
                        <div >
                            <div class="form-group">
                                <label for="k_Foto" class="control-label">Keterangan Foto</label>
                                <textarea required placeholder="Keterangan Foto" id="k_Foto" class="form-control" name="k_Foto" maxlength="50" cols="10" rows="3"></textarea>
                           
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                    <button type="submit" id="bImg" class="btn btn-info waves-effect waves-light">Save</button>
                </div>
            </div>
        </div>
        </form> 
    </div><!-- /.modal -->
    