$('#nkk').select2();
$('#Tnkk').select2();
var id_kk;
$(function() {
    $('#swt').bootstrapToggle();
  }) 
// let my_dates
 $.ajax({
                type : 'POST',
                url : 'ajax/nkkload.php',
                // data : {aksi:'tambah'},
             	// dataType:"json",
             	success : function(data){
                            $('#nkk').html(data);
                            $('#Tnkk').html(data);
                    }
         });
 		
function IsiDataPend(id_penduduk){
	

	$('#nama_pend').attr('disabled','disabled');
	$('#nik').attr('disabled','disabled');
	$('#nkk').attr('disabled','disabled');
	$('#tempat_lahir').attr('disabled','disabled');
	$('#tgl_lahir').attr('disabled','disabled');
	$("input[type=radio][name='jk']").attr('disabled','disabled');
	$('#pekerjaan').attr('disabled','disabled');
	$('#status').attr('disabled','disabled');
	$('#shdk').attr('disabled','disabled');
	$('#tmb_penduduk').css('display','none');
	$('.tulisan_head').html("Detail Data Penduduk");
	$('#agama').attr('disabled','disabled');
	 $('#swt').bootstrapToggle('off')
	 $('#resE').attr('disabled','disabled');
	// $('#swt').makeUnchecked();
	
	let id_pend = id_penduduk;

	
	  $.ajax({
                type : 'POST',
                url : 'ajax/dataPribadi.php',
                data : {id:id_pend},
             	dataType:"json",
             	success : function(data){

             			$('#id_pend').val(data.Id_penduduk);
                        $('#nama_pend').val(data.nama);
						$('#nik').val(data.nik);
						id_kk = data.id_kk;
						
						if (data.jk=="L") {
							$('#jk1').attr('checked','true')
						}

						if (data.jk=="P") {
							$('#jk2').attr('checked','true')							
						}

						$('#agama').val(data.id_agama)

						$('#nkk').val(data.id_kk).trigger('change'); // Select the option with a value of '1'
					
						$('#tempat_lahir').val(data.tempat_lahir);
					
						if (data.tgl_lahir!=null) {
							tgl =  data.tgl_lahir.split("-");
							$('#tgl_lahir').val(data.tgl_lahir);
						}else{
							$('#tgl_lahir').val(null);
						}
				
						// $("input[type=radio][value='"+data.jk+"']").attr('checked','checked');
						// if (data.wp==1 || data.wp==0) {
						// 	$("input[type=radio][name='wp'][value='"+data.wp+"']").attr('checked','checked');
						// 	$("input[type=radio][name='wp']").attr('disabled','disabled');
						// }else{
						// 	$("input[type=radio][name='wp']").removeAttr('checked','checked');
						// 	$("input[type=radio][name='wp']").attr('disabled','disabled');
						// }
				
						$('#pekerjaan').val(data.pekerjaan);
		
						$('#status').val(data.id_status);    
						$('#shdk option[value='+data.id_shdk+']').attr('selected','selected');     
                     }
         });


}

// $.ajax({
//                 type : 'POST',
//                 url : 'ajax/nkkload.php',
//                 data : {id:id_kk,datas:22},
//              	// dataType:"json",
//              	success : function(data){
//                             $('#nkk').html(data);
//                             // $('#Tnkk').html(data);
//                     }
//          });

$('#nkk').on('change', function(){
	idkk = this.value;
	if (idkk!="") {
		$.ajax({
	                type : 'POST',
	                url : 'ajax/dataKeluarga.php',
	                data : {id:idkk},
	             	dataType:"json",
	             	success : function(data){
	             			let result;
	             			for (var i = 0; i < data.keluarga.length; i++) {
	             				result += data.keluarga[i];
	             			}
	             			$('#isiDatakeluarga').html(result);
	             			$('.alamat_dusn').html(data.nama_dusun);
	             			$('.alamat_rt').html(data.rt);
	             			$('.alamat_rw').html(data.rw);

	                            // console.log(data);
	                    }
	            });
	}else{
							$('#isiDatakeluarga').html('');
	             			$('.alamat_dusn').html('');
	             			$('.alamat_rt').html('');
	             			$('.alamat_rw').html('');
	}
})

$('#Tnkk').on('change', function(){
	idkk = this.value;
	if (idkk!="") {
		$.ajax({
	                type : 'POST',
	                url : 'ajax/dataKeluarga.php',
	                data : {id:idkk},
	             	dataType:"json",
	             	success : function(data){
	             			let result;
	             			for (var i = 0; i < data.keluarga.length; i++) {
	             				result += data.keluarga[i];
	             			}
	             			$('#TisiDatakeluarga').html(result);
	             			$('.Talamat_dusn').html(data.nama_dusun);
	             			$('.Talamat_rt').html(data.rt);
	             			$('.Talamat_rw').html(data.rw);

	                            // console.log(data);
	                    }
	            });
	}else{
							$('#TisiDatakeluarga').html('');
	             			$('.Talamat_dusn').html('');
	             			$('.Talamat_rt').html('');
	             			$('.Talamat_rw').html('');
	}
})

// $('#swt').on('change', function(){
// 	console.log(this);	
// });
// let St = 1;
$('#swt').on('change', function(){
	// console.log(St);

	if ($('#swt').is(':checked')) {
			
			$('#nama_pend').removeAttr('disabled','disabled');
			$('#nik').removeAttr('disabled','disabled');
			$('#nkk').removeAttr('disabled','disabled');
			$('#tempat_lahir').removeAttr('disabled','disabled');
			$('#tgl_lahir').removeAttr('disabled','disabled');
			$("input[type=radio][name='jk']").removeAttr('disabled','disabled');
			$('#pekerjaan').removeAttr('disabled','disabled');
			$('#status').removeAttr('disabled','disabled');
			$('#shdk').removeAttr('disabled','disabled');
			$('#tmb_penduduk').removeAttr('style');
			$('.tulisan_head').html("Edit Data Penduduk");
			 $('#resE').removeAttr('disabled','disabled');
			$('#agama').removeAttr('disabled','disabled');
	}else{
			
			$('#nama_pend').attr('disabled','disabled');
			$('#nik').attr('disabled','disabled');
			$('#nkk').attr('disabled','disabled');
			$('#tempat_lahir').attr('disabled','disabled');
			$('#tgl_lahir').attr('disabled','disabled');
			$("input[type=radio][name='jk']").attr('disabled','disabled');
			$('#pekerjaan').attr('disabled','disabled');
			$('#status').attr('disabled','disabled');
			$('#shdk').attr('disabled','disabled');
			$('#tmb_penduduk').css('display','none');
			$('.tulisan_head').html("Detail Data Penduduk");
			 $('#resE').attr('disabled','disabled');
			$('#agama').attr('disabled','disabled');

	}
});

$('#fromDataPend').on('submit',function(e){
	$('#tmb_penduduk').attr('disabled','disabled');
	$('#tmb_penduduk').text('Mohon Tunggu ...');
	// $("input[type=radio][name='wp']").removeAttr('disabled','disabled');
	let dataForm =  $( this ).serializeArray();	
	// console.log(dataForm);
	e.preventDefault();
	  $.ajax({
                type : 'POST',
                url : 'ajax/editPend.php',
                data : {form:dataForm},
             	// dataType:"json",
             	success : function(data){
             		if (data) {
             			$('#editPendModal').modal('hide');	
             			toastr.success('Data Berhasil Di Edit');
             			$('#tmb_penduduk').removeAttr('disabled','disabled');
						$('#tmb_penduduk').text('Update');
						// $("input[type=radio][name='wp']").attr('disabled','disabled');
						$('#datatablePend').DataTable().ajax.reload();
						$("#fromDataPend")[0].reset();
             		}else{
             			$('#editPendModal').modal('hide');	
             			toastr.warning('Tidak Ada Perubahan Data');
             			$('#tmb_penduduk').removeAttr('disabled','disabled');
						$('#tmb_penduduk').text('Update');
						// $("input[type=radio][name='wp']").attr('disabled','disabled');
						$('#datatablePend').DataTable().ajax.reload();
						$("#fromDataPend")[0].reset();
             		}
             	}
             })
})

$('.ResTgl').on('click', function () {
    $('#Ttgl_lahir').val('');
    // console.log($('#Ttgl_lahir').val())
     $('#Ttgl_lahir').focus();
});

$('#resE').on('click', function () {
    $('#tgl_lahir').val('');
     $('#tgl_lahir').focus();
})

// Twp			
// Tstatus		


// tambahPendModal
$('#fromTDataPend').on('submit', function(e){
	e.preventDefault();
	$('#Ttmb_penduduk').attr('disabled','disabled');
	$('#Ttmb_penduduk').text('Mohon Tunggu ...');
	// $("input[type=radio][name='wp']").removeAttr('disabled','disabled');
	let dataForm =  $( this ).serializeArray();	

	  $.ajax({
                type : 'POST',
                url : 'ajax/tambahPend.php',
                data : {form:dataForm},
             	// dataType:"json",
             	success : function(data){
             		if (data) {
             			$('#tambahPendModal').modal('hide');	
             			toastr.success('Berhasil Tambah Data');
             			$('#Ttmb_penduduk').removeAttr('disabled','disabled');
						$('#Ttmb_penduduk').text('Tambah');
						// $("input[type=radio][name='wp']").attr('disabled','disabled');
						$('#datatablePend').DataTable().ajax.reload();
						$("#fromTDataPend")[0].reset();
						$('#Tnkk').val('').trigger('change');
             		}else{
             			$('#tambahPendModal').modal('hide');	
             			toastr.warning('Tidak Ada Perubahan Data');
             			$('#tmb_penduduk').removeAttr('disabled','disabled');
						$('#tmb_penduduk').text('Tambah');
						// $("input[type=radio][name='wp']").attr('disabled','disabled');
						$('#datatablePend').DataTable().ajax.reload();
						$("#fromTDataPend")[0].reset();
						$('#Tnkk').val('').trigger('change');
						
             		}
             	}
             })
})
// Ttmb_penduduk

function HapusDataPend(id_penduduk){
	swal({
		  title: "Anda Yakin ?",
		  text: "Data Akan Dihapus Permanen !",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
	.then((willDelete) => {
	  if (willDelete) {
	  	$.ajax({
                type : 'POST',
                url : 'ajax/hapusPend.php',
                data : {id:id_penduduk},
             	// dataType:"json",
             	success : function(data){
             		if (data==true) {
	             		$('#datatablePend').DataTable().ajax.reload();
	             		toastr.success('Data Berhasil Di Hapus !');
             		}else{
             			$('#datatablePend').DataTable().ajax.reload();
	             		toastr.success('Data Gagal Di Hapus !');	
             		}
             	}
	  		})
	  
	  }else{
	  	toastr.success('Proses Dibatalkan !');
	  }
	});
}


$('#Tnik').on('focusout',function(){
 	cariDiDB(this.value,'nik','#Ttmb_penduduk');
})
	// console.log(this.value)
function cariDiDB(val,nik,tmbl,aksi){
	$.ajax({
                type : 'POST',
                url : 'ajax/cariDup.php',
                data : {cari:val,pros:nik},
             	// dataType:"json",
             	success : function(data){
             		// console.log(data);
             		if (data==false) {
             				$(tmbl).attr('disabled','disabled');
             				toastr.warning('Error , Duplikasi '+nik.toUpperCase()+' !');
             		}else{
             				$(tmbl).removeAttr('disabled','disabled');
             				// toastr.success('Error , Duplikasi NIK !');
             		}

             	}
             })
}

$('#nik').on('focusout',function(){
 	cariDiDBE(this.value,'nik','#tmb_penduduk',$('#id_pend').val());
})

function cariDiDBE(val,nik,tmbl,id){
	$.ajax({
                type : 'POST',
                url : 'ajax/cariDup.php',
                data : {cari:val,pros:nik,aksi:'edit',id:id},
             	// dataType:"json",
             	success : function(data){
             		// console.log(data);
             		if (data==false) {
             				$(tmbl).attr('disabled','disabled');
             				toastr.warning('Error , Duplikasi '+nik.toUpperCase()+' !');
             		}else{
             				$(tmbl).removeAttr('disabled','disabled');
             				// toastr.success('Error , Duplikasi NIK !');
             		}

             	}
             })
}