 $('#pddk').select2();
 $('#Epddk').select2();
 $(function() {
    $('#Srtswt').bootstrapToggle();
  })

  $.ajax({
                type : 'POST',
                url : 'ajax/penddkload.php',
                // data : {aksi:'tambah'},
             	// dataType:"json",
             	success : function(data){
                            $('#pddk').html(data);
                            $('#Epddk').html(data);

							// $("#fromTDataKK")[0].reset();
                    }
         });

  $('#fromTDataSrt').on('submit', function(e){
  		e.preventDefault();
  		// alert('ok');
  		$('#bSrt').text('Mohon Tunggu ....');
  		$('#bSrt').attr('disabled','disabled');
  		let dataForm =  $( this ).serializeArray();	

  		$.ajax({
		                type : 'POST', 
		                url : 'ajax/tambahSrt.php',
		                data : {form:dataForm},
		             	// dataType:"json",
		             	success : function(data){
		             		if (data) {
		             			$('#tambahSrtModal').modal('hide');	
		             			toastr.success('Data Berhasil Di Tambahkan ');
		             			$('#bSrt').removeAttr('disabled','disabled');
								$('#bSrt').text('Buat');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableSrtKluar').DataTable().ajax.reload();
								$("#fromTDataSrt")[0].reset();
								$('#pddk').val('').trigger('change');
		             		}else{
		             			$('#tambahSrtModal').modal('hide');	
		             			toastr.warning('Tidak Ada Perubahan Data');
		             			$('#bSrt').removeAttr('disabled','disabled');
								$('#bSrt').text('Buat');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableSrtKluar').DataTable().ajax.reload();
								$("#fromTDataSrt")[0].reset();
								$('#pddk').val('').trigger('change');
		             		}
		             	}
		        })

  })

  // cetak surat

 function CetakSrt(id_sk,id_jp){
 	if (id_jp == 1) {
 		window.open('cetak/skd.php?id='+id_sk, '_blank');
 	}else if (id_jp == 2) {
 		window.open('cetak/sktm.php?id='+id_sk, '_blank');
 	}else if (id_jp == 3) {
 		window.open('cetak/skn.php?id='+id_sk, '_blank');
 	}else{
 		window.open('index.php','_blank');
 	}
 }

 // hapus data 
 function HapusDataSrt(id_srt){
 	swal({
		  title: "Anda Yakin ?",
		  text: "Data Akan Di Hapus Secara Permanen !",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
	.then((willDelete) => {
	  if (willDelete) {
	  	$.ajax({
                type : 'POST',
                url : 'ajax/hapusSrt.php',
                data : {id:id_srt},
             	// dataType:"json",
             	success : function(data){
             		if (data==true) {
	             		$('#datatableSrtKluar').DataTable().ajax.reload();
	             		toastr.success('Data Berhasil Di Hapus !');
             		}else{
             			$('#datatableSrtKluar').DataTable().ajax.reload();
	             		toastr.success('Data Gagal Di Hapus !');	
             		}
             	}
	  		})
	  
	  }else{
	  	toastr.success('Proses Dibatalkan !');
	  }
	});

 }


 // edit srt
 function IsiDataSrt(id){
 	$("#fromEDataSrt")[0].reset();
	$('#Eno_srt').attr('disabled','disabled');
	$('#Ejs').attr('disabled','disabled');
	$('#Epddk').attr('disabled','disabled');
	$('#Etgl_srt').attr('disabled','disabled');
	$('.tulisan_head').html("Detail Data Surat Keluar");
	$('#Srtswt').bootstrapToggle('off')
	$('#EbSrt').css('display','none');
	  $.ajax({
                type : 'POST',
                url : 'ajax/dataSrtload.php',
                data : {id:id},
             	dataType:"json",
             	success : function(data){
             		// console.log(data)
 // [{"Id_sk":"6","id_jenissurat":"1","no_surat":"544311.1\/01\/XI\/2018\/D.TK","id_penduduk":"10","tgl_srt":"2018-11-16"}] 

             			$('#id_srt').val(data.Id_sk);
						$('#Epddk').val(data.id_penduduk).trigger('change'); // Select the option with a value of '1'
                        $('#Eno_srt').val(data.no_surat)
						$('#Ejs').val(data.id_jenissurat)
						$('#Etgl_srt').val(data.tgl_srt)
                     }
         });

}

$('#Srtswt').on('change', function(){
	// console.log(St);

	if ($('#Srtswt').is(':checked')) {
			
				// $("#fromEDataSrt")[0].reset();
				$('#Eno_srt').removeAttr('disabled','disabled');
				$('#Ejs').removeAttr('disabled','disabled');
				$('#Epddk').removeAttr('disabled','disabled');
				$('#Etgl_srt').removeAttr('disabled','disabled');
				$('.tulisan_head').html("Edit Data Surat Keluar");
				// $('#Srtswt').bootstrapToggle('off')
				$('#EbSrt').removeAttr('style');
	}else{
				$('#Eno_srt').attr('disabled','disabled');
				$('#Ejs').attr('disabled','disabled');
				$('#Epddk').attr('disabled','disabled');
				$('#Etgl_srt').attr('disabled','disabled');
				$('.tulisan_head').html("Detail Data Surat Keluar");
				// $('#Srtswt').bootstrapToggle('off')
				$('#EbSrt').css('display','none');

	}
});


$('#fromEDataSrt').on('submit', function(e){
		e.preventDefault();
  		// alert('ok');
  		$('#EbSrt').text('Mohon Tunggu ....');
  		$('#EbSrt').attr('disabled','disabled');
  		let dataForm =  $( this ).serializeArray();	

  		$.ajax({
		                type : 'POST', 
		                url : 'ajax/editSrt.php',
		                data : {form:dataForm},
		             	// dataType:"json",
		             	success : function(data){
		             		if (data) {
		             			$('#editsrtModal').modal('hide');	
		             			toastr.success('Data Berhasil Di Ubah ');
		             			$('#EbSrt').removeAttr('disabled','disabled');
								$('#EbSrt').text('Update');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableSrtKluar').DataTable().ajax.reload();
								$("#fromEDataSrt")[0].reset();
								$('#Epddk').val('').trigger('change');
		             		}else{
		             			$('#editsrtModal').modal('hide');	
		             			toastr.warning('Tidak Ada Perubahan Data');
		             			$('#EbSrt').removeAttr('disabled','disabled');
								$('#EbSrt').text('Update');
								// $("input[type=radio][name='wp']").attr('disabled','disabled');
								$('#datatableSrtKluar').DataTable().ajax.reload();
								$("#fromEDataSrt")[0].reset();
								$('#Epddk').val('').trigger('change');
		             		}
		             	}
		        })

	
})