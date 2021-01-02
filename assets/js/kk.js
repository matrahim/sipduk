$('#list_pend').select2();
$('#Elist_pend').select2();
$(function() {
    $('#Kswt').bootstrapToggle();
  })
 $.ajax({
                type : 'POST',
                url : 'ajax/pendload.php',
                // data : {aksi:'tambah'},
             	// dataType:"json",
             	success : function(data){
                            $('#list_pend').html(data);
                            $('#Elist_pend').html(data);
							// $("#fromTDataKK")[0].reset();
                    }
         });

let dataKK;
 $('#list_pend').on('change', function(){
	idkk = this.value;
	if (idkk!="") {
		$.ajax({
	                type : 'POST',
	                url : 'ajax/dataKeluarga.php',
	                data : {id:idkk,aksi:'aksi'},
	             	dataType:"json",
	             	success : function(data){
		             		if (data.keluarga!=null) {
		             			dataKK=true;
		             			let result;
		             			for (var i = 0; i < data.keluarga.length; i++) {
		             				result += data.keluarga[i];
		             			}
		             			$('#TisiDatakeluargaKK').html(result);
		             			$('.Talamat_dusn').html(data.nama_dusun);
		             			$('.Talamat_rt').html(data.rt);
		             			$('.Talamat_rw').html(data.rw);
		             		}else{
		             			$('#TisiDatakeluargaKK').html('<b><td colspan="4" style="text-align:center">Belum Tertaut Ke No KK Manapun</td></b>');
		             			$('.Talamat_dusn').html('');
		             			$('.Talamat_rt').html('');
		             			$('.Talamat_rw').html('');
		             			dataKK=false; 
		             		} 

	                            // console.log(data);
	                    }
	            });
	}else{
							$('#TisiDatakeluargaKK').html('');
	             			$('.Talamat_dusn').html('');
	             			$('.Talamat_rt').html('');
	             			$('.Talamat_rw').html('');
	             			dataKK=null;
	}
})


 $('#fromTDataKK').on('submit',function(e){
	$('#Ttmb_kk').attr('disabled','disabled');
	$('#Ttmb_kk').text('Mohon Tunggu ...');
	// $("input[type=radio][name='wp']").removeAttr('disabled','disabled');
	let dataForm =  $( this ).serializeArray();	
	// console.log(dataForm);
	e.preventDefault();

	if (dataKK) {
			swal({
				  title: "Anda Yakin, Aksi Ini Akan Membuat data Berubah !",
				  text: "Kepala Keluarga Sudah Tertaut Dengan No KK yang Lain ?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
			.then((willDelete) => {
			  if (willDelete) {
			  	 $.ajax({
		                type : 'POST', 
		                url : 'ajax/tambahkk.php',
		                data : {form:dataForm},
		             	// dataType:"json",
		             	success : function(data){
		             		if (data) {
		             			$('#tambahKKModal').modal('hide');	
		             			toastr.success('Data Berhasil Di Tambahkan ');
		             			$('#Ttmb_kk').removeAttr('disabled','disabled');
								$('#Ttmb_kk').text('Tambah');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromTDataKK")[0].reset();
								$('#list_pend').val('').trigger('change');
		             		}else{
		             			$('#tambahKKModal').modal('hide');	
		             			toastr.warning('Tidak Ada Perubahan Data');
		             			$('#Ttmb_kk').removeAttr('disabled','disabled');
								$('#Ttmb_kk').text('Tambah');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromTDataKK")[0].reset();
								$('#list_pend').val('').trigger('change');
		             		}
		             	}
		             })
			  
			  }else{
			  	$('#Ttmb_kk').removeAttr('disabled','disabled');
				$('#Ttmb_kk').text('Tambah');
			  }
			});
	}else{
		$.ajax({
		                type : 'POST', 
		                url : 'ajax/tambahkk.php',
		                data : {form:dataForm},
		             	// dataType:"json",
		             	success : function(data){
		             		if (data) {
		             			$('#tambahKKModal').modal('hide');	
		             			toastr.success('Data Berhasil Di Tambahkan ');
		             			$('#Ttmb_kk').removeAttr('disabled','disabled');
								$('#Ttmb_kk').text('Tambah');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromTDataKK")[0].reset();
								$('#list_pend').val('').trigger('change');
		             		}else{
		             			$('#tambahKKModal').modal('hide');	
		             			toastr.warning('Tidak Ada Perubahan Data');
		             			$('#Ttmb_kk').removeAttr('disabled','disabled');
								$('#Ttmb_kk').text('Tambah');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromTDataKK")[0].reset();
								$('#list_pend').val('').trigger('change');
		             		}
		             	}
		             })

	}

})


 $('#Tno_kk').on('focusout',function(){
 	cariDiDB(this.value,'kk','#Ttmb_kk');
})


	// console.log(this.value)
function cariDiDB(val,nik,tmbl){
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

// $('#nik').on('focusout',function(){
//  	cariDiDBE(this.value,'nik','#tmb_penduduk',$('#id_pend').val());
// })

// function cariDiDBE(val,nik,tmbl,id){
// 	$.ajax({
//                 type : 'POST',
//                 url : 'ajax/cariDup.php',
//                 data : {cari:val,pros:nik,aksi:'edit',id:id},
//              	// dataType:"json",
//              	success : function(data){
//              		// console.log(data);
//              		if (data==false) {
//              				$(tmbl).attr('disabled','disabled');
//              				toastr.warning('Error , Duplikasi '+nik.toUpperCase()+' !');
//              		}else{
//              				$(tmbl).removeAttr('disabled','disabled');
//              				// toastr.success('Error , Duplikasi NIK !');
//              		}

//              	}
//              })
// }

function IsiDataKK(id){
	// $('#Eid_kk').val(id);
	$("#fromEDataKK")[0].reset();
	$('#Eno_kk').attr('disabled','disabled');
	$('#Elist_pend').attr('disabled','disabled');
	$('#Edusun').attr('disabled','disabled');
	$('#Ert').attr('disabled','disabled');
	$('#Erw').attr('disabled','disabled');
	$('.tulisan_head').html("Detail Data KK");
	$('#Kswt').bootstrapToggle('off')
	$('#Etmb_kk').css('display','none');
	  $.ajax({
                type : 'POST',
                url : 'ajax/dataKKload.php',
                data : {id:id},
             	dataType:"json",
             	success : function(data){
             		// console.log(data)
             	
             			$('#Eid_kk').val(data.Id_kk);
						$('#Elist_pend').val(data.Id_penduduk).trigger('change'); // Select the option with a value of '1'
                        // $('#Edusun').val(data.id_dusun);
						$('#Eno_kk').val(data.no_kk);
						$('#Erw').val(data.rt);
						$('#Ert').val(data.rw);
						if (data.id_dusun!=null) {
							$('#Edusun option[value='+data.id_dusun+']').attr('selected','selected');     
						}else{
							$('#Edusun option[value=""]').attr('selected','selected');     
						}
						// $('#EisiDatakeluargaKK')
                     }
         });

	    $.ajax({
                type : 'POST',
                url : 'ajax/dataKeluarga.php',
                data : {id:id},
             	dataType:"json",
             	success : function(data){
             		$('#EisiDatakeluargaKK').html(data.keluarga);
             		$('.Talamat_dusn').html(data.nama_dusun);
	             	$('.Talamat_rt').html(data.rt);
	             	$('.Talamat_rw').html(data.rw);
	     
             	}
             });
}

$('#Kswt').on('change', function(){
	// console.log(St);

	if ($('#Kswt').is(':checked')) {
			
			$('#Eno_kk').removeAttr('disabled','disabled');
			$('#Elist_pend').removeAttr('disabled','disabled');
			$('#Edusun').removeAttr('disabled','disabled');
			$('#Ert').removeAttr('disabled','disabled');
			$('#Erw').removeAttr('disabled','disabled');
			$('.tulisan_head').html("Edit Data KK");
			// $('#Kswt').bootstrapToggle('off')
			$('#Etmb_kk').removeAttr('style');
	}else{
			
			$('#Eno_kk').attr('disabled','disabled');
			$('#Elist_pend').attr('disabled','disabled');
			$('#Edusun').attr('disabled','disabled');
			$('#Ert').attr('disabled','disabled');
			$('#Erw').attr('disabled','disabled');
			$('.tulisan_head').html("Detail Data KK");
			// $('#Kswt').bootstrapToggle('off')
			$('#Etmb_kk').css('display','none');

	}
});





// $('#Elist_pend').on('change', function(){
// 	id = this.value;	
// 	    $.ajax({
//                 type : 'POST',
//                 url : 'ajax/dataKeluarga.php',
//                 data : {id:id},
//              	dataType:"json",
//              	success : function(data){
//              		$('#EisiDatakeluargaKK').html(data.keluarga);
//              		$('.Talamat_dusn').html(data.nama_dusun);
// 	             	$('.Talamat_rt').html(data.rt);
// 	             	$('.Talamat_rw').html(data.rw);
	     
//              	}
//              });
// })

$('#Eno_kk').on('focusout',function(){
 	cariDiDBEkk(this.value,'kk','#Etmb_kk',$('#Eid_kk').val());
})

function cariDiDBEkk(val,nik,tmbl,id){
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



$('#Elist_pend').on('change', function(){
	idkk = this.value;
	if (idkk!="") {
		$.ajax({
	                type : 'POST',
	                url : 'ajax/dataKeluarga.php',
	                data : {id:idkk,aksi:'aksi'},
	             	dataType:"json",
	             	success : function(data){
		             		if (data.keluarga!=null) {
		             			dataKK=true;
		             		}else{
		             			$('#EisiDatakeluargaKK').html('<b><td colspan="4" style="text-align:center">Belum Tertaut Ke No KK Manapun</td></b>');
		             			dataKK=false; 
		             		} 
	                    }
	            });
	}else{
							$('#EisiDatakeluargaKK').html('');
	             			dataKK=null;
	}
})

$('#fromEDataKK').on('submit', function(e){
	$('#Etmb_kk').attr('disabled','disabled');
	$('#Etmb_kk').text('Mohon Tunggu ...');
	// $("input[type=radio][name='wp']").removeAttr('disabled','disabled');
	let dataForm =  $( this ).serializeArray();	
	// console.log(dataForm);
	e.preventDefault();

	if (dataKK) {
			swal({
				  title: "Anda Yakin, Aksi Ini Akan Membuat data Berubah !",
				  text: "Kepala Keluarga Sudah Tertaut Dengan No KK yang Lain ?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
			.then((willDelete) => {
			  if (willDelete) {
			  	 $.ajax({
		                type : 'POST', 
		                url : 'ajax/editkk.php',
		                data : {form:dataForm},
		             	// dataType:"json",
		             	success : function(data){
		             		if (data) {
		             			$('#editKKModal').modal('hide');	
		             			toastr.success('Data Berhasil Di Edit ');
		             			$('#Etmb_kk').removeAttr('disabled','disabled');
								$('#Etmb_kk').text('Update');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromEDataKK")[0].reset();
								$('#Elist_pend').val('').trigger('change');
		             		}else{
		             			$('#editKKModal').modal('hide');	
		             			toastr.warning('Tidak Ada Perubahan Data');
		             			$('#Etmb_kk').removeAttr('disabled','disabled');
								$('#Etmb_kk').text('Tambah');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromEDataKK")[0].reset();
								$('#Elist_pend').val('').trigger('change');
		             		}
		             	}
		             })
			  
			  }else{
			  	$('#Etmb_kk').removeAttr('disabled','disabled');
				$('#Etmb_kk').text('Update');
			  }
			});
	}else{
		$.ajax({
		                type : 'POST', 
		                url : 'ajax/editkk.php',
		                data : {form:dataForm},
		             	// dataType:"json",
		             	success : function(data){
		             		if (data) {
		             			$('#editKKModal').modal('hide');	
		             			toastr.success('Data Berhasil Di Edit ');
		             			$('#Etmb_kk').removeAttr('disabled','disabled');
								$('#Etmb_kk').text('Update');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromEDataKK")[0].reset();
								$('#Elist_pend').val('').trigger('change');
		             		}else{
		             			$('#editKKModal').modal('hide');	
		             			toastr.warning('Tidak Ada Perubahan Data');
		             			$('#Etmb_kk').removeAttr('disabled','disabled');
								$('#Etmb_kk').text('Tambah');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableKK').DataTable().ajax.reload();
								$("#fromEDataKK")[0].reset();
								$('#Elist_pend').val('').trigger('change');
		             		}
		             	}
		             })

	}

})


function HapusDataKK(id_kk){
	swal({
		  title: "Anda Yakin ?",
		  text: "Data Yang Berkaitan Akan Di Hapus Secara Permanen !",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
	.then((willDelete) => {
	  if (willDelete) {
	  	$.ajax({
                type : 'POST',
                url : 'ajax/hapusKK.php',
                data : {id:id_kk},
             	// dataType:"json",
             	success : function(data){
             		if (data==true) {
	             		$('#datatableKK').DataTable().ajax.reload();
	             		toastr.success('Data Berhasil Di Hapus !');
             		}else{
             			$('#datatableKK').DataTable().ajax.reload();
	             		toastr.success('Data Gagal Di Hapus !');	
             		}
             	}
	  		})
	  
	  }else{
	  	toastr.success('Proses Dibatalkan !');
	  }
	});
}
