function profilLoad(){
	$('#profilUbah').modal('show');
	 $.ajax({
                type : 'POST',
                url : 'ajax/profilload.php',
                // data : {aksi:'tambah'},
             	dataType:"json",
             	success : function(data){
               
						$('#n_kades').val(data.kepala_desa)
						$('#d_alamat').val(data.alamat)
                    }
         });
}

$('#fromUProfil').on('submit', function(e){
	e.preventDefault();
	$('#bProf').text('Mohon Tunggu ...')
	$('#bProf').attr('disabled','disabled')
	let dataForm =  $( this ).serializeArray();	
	// console.log(dataForm);
	e.preventDefault();



	$.ajax({
                type : 'POST',
                url : 'ajax/updateProfil.php',
                data : {form:dataForm},
             	// dataType:"json",
             	success : function(data){
                            $('#bProf').text('Save')
                            $('#bProf').removeAttr('disabled','disabled')
                            $('#profilUbah').modal('hide');
                        if (data) {
                            toastr.success('Data Berhasil Di Ubah !');
                        }else{
                            toastr.warning('Tidak Ada Perubahan Data ! ');
                        }
                    }
         });

})


function profilPass(){
        $('#fromUPass').trigger("reset");
        $('#profilUPass').modal('show');
        $('#pass_lama').focus();
}

$('#fromUPass').on('submit', function(e){
    e.preventDefault();
    $('#bPass').text('Mohon Tunggu ...')
    $('#bPass').attr('disabled','disabled')
    let dataForm =  $( this ).serializeArray(); 
    // console.log(dataForm);
    e.preventDefault();

    $.ajax({
                type : 'POST',
                url : 'ajax/updateProfilPass.php',
                data : {form:dataForm},
                // dataType:"json",
                success : function(data){
                        if (data) {
                            $('#bPass').text('Save')
                            $('#bPass').removeAttr('disabled','disabled')
                            $('#profilUPass').modal('hide');
                            toastr.success('Data Berhasil Di Ubah !');
                        }else{
                            $('#bPass').text('Save')
                            $('#bPass').removeAttr('disabled','disabled')
                            $('#profilUPass').modal('hide');
                            toastr.warning('Tidak Ada Perubahan Data ! ');
                        }
                    }
         });

})


$('#pass_lama').on("keyup",function(e){
    lama  = this.value
    if (!this.value) {
          $('#divPL').attr("class","form-group")
         $('#passwordHelp1').attr("class","invisible")
    }else{
        $.ajax({
                    type : 'POST',
                    url : 'ajax/cekPass.php',
                    data : {pass:lama},
                    // dataType:"json",
                    success : function(data){
                        // console.log(data)
                              if (data==1) {
                                $('#divPL').removeAttr("class")
                                $('#divPL').attr("class","form-group has-success")
                                $('#passwordHelp1').attr("class","visible")
                                $('#passwordHelp1').html('<small  class="text-success">'+
                                      '* Password Cocok !'+
                                    '</small>')
                                $("#bPass").removeAttr("disabled","disabled")
                              }else{
                                $('#divPL').removeAttr("class")
                                $('#divPL').attr("class","form-group has-error")
                                $('#passwordHelp1').attr("class","visible")
                                $('#passwordHelp1').html('<small  class="text-danger">'+
                                      '* Password Lama Tidak Cocok !'+
                                    '</small>')
                                $("#bPass").attr("disabled","disabled")
                              }

                        }
             });
    }
})


 function cekPassword(){
    pass  = $('#pass_baru').val()
    upass = $('#pass_Ubaru').val()
     if (!pass) {
          $('#divP').attr("class","form-group")
         $('#passwordHelp2').attr("class","invisible")
     }else{

        if (pass==upass) {
             $('#divP').removeAttr("class")
            $('#divP').attr("class","form-group has-success")
            $('#passwordHelp2').attr("class","visible")
            $('#passwordHelp2').html('<small  class="text-success">'+
                  '* Password Cocok !'+
                '</small>')
            $("#bPass").addClass('visible')
            $("#bPass").removeClass('invisible') 
        }else{
             $('#divP').removeAttr("class")
            $('#divP').attr("class","form-group has-error")
            $('#passwordHelp2').attr("class","visible")
            $('#passwordHelp2').html('<small  class="text-danger">'+
                  '* Password Baru Tidak Cocok !'+
                '</small>')
            $("#bPass").removeClass('visible')
            $("#bPass").addClass('invisible')

        }
     }
}