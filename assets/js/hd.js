
	  function loadHd(){
	  	 $.ajax({
		                type : 'POST', 
		                url : 'ajax/loadHd.php',
		                // data : {img:base64,form:dataForm},
		             	dataType:"json",
		             	success : function(data){
		             		// console.log(data.length)
		             		// gambar
		             		for (let i=0; data.length>i; i++) {
			             		$('.gal-detail a img').eq(i).attr("src", "img/hd/"+data[i].nama_gambar)
			             		$('.gal-detail a').eq(i).attr("title", data[i].judul)
			             		$('.gal-detail a').eq(i).attr("href", "img/hd/"+data[i].nama_gambar)
			             		$('.gal-detail h4').eq(i).html(data[i].judul)
			             		$('.gal-detail p').eq(i).html(data[i].ket)
		             		}



		             	}
		         })
	  }



	 var def = null

	  function ambilGambar(id){
	  	$('#id_').val(id)

	  	 $.ajax({
		                type : 'POST', 
		                url : 'ajax/loadImg.php',
		                data : {id:id},
		             	dataType:"json",
		             	success : function(data){
		             		$('#g_judul').val(data.judul)
		             		$('#k_Foto').val(data.ket)


							}
		         })
	  }


		   $('.dropify').dropify({
	 		// defaultFile: def ,
        messages: {
            'default': 'Drag and drop a file here or click',
            'replace': 'Drag and drop or click to replace',
            'remove': 'Remove',
            'error': 'Ooops, something wrong appended.'
        },
       error: {
                'fileSize': 'The file size is too big ({{ value }} max).',
                'minWidth': 'The image width is too small ({{ value }}}px min).',
                'maxWidth': 'The image width is too big ({{ value }}}px max).',
                'minHeight': 'The image height is too small ({{ value }}}px min).',
                'maxHeight': 'The image height is too big ({{ value }}px max).',
                'imageFormat': 'The image format is not allowed ({{ value }} only).'
            }
     });
	


	  let base64   
	      // base64 image

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader(); 
                reader.onload = function (e) {
                    // $('#falseinput').attr('src', e.target.result);
                    base64 = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }

        }

    // base64 image
$('#fromTDataFoto').on('submit', function(e){
	e.preventDefault();
	$('#bImg').text("Mohon Tunggu ...")
	$('#bImg').attr('disabled', 'disabled')

	// let base64 = readURL($('#u_Foto').value);
	let dataForm =  $( this ).serializeArray();	
	// console.log(base64);
	if (base64==null) {
		base64 = 'kosong'
	}

		 $.ajax({
		                type : 'POST', 
		                url : 'ajax/editGambar.php',
		                data : {img:base64,form:dataForm},
		             	// dataType:"json",
		             	success : function(data){
		             		if (data) {
		             			$('#bImg').text("Save")
								loadHd()
								$('#UabhFoto').modal('hide')
								$('#bImg').removeAttr('disabled', 'disabled')

								toastr.success('Berhasil Mengubah Data');
								location.reload();
		             		}else{
		             			$('#bImg').text("Save")
								loadHd()
								$('#UabhFoto').modal('hide')
								toastr.warning('Tidak Ada Perubahan Data');
								$('#bImg').removeAttr('disabled', 'disabled')

		             		}
		             	}
		         })
})
	


              
