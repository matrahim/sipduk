$('#FormVal').on('submit', function(e){
	let dataForm =  $( this ).serializeArray();	
	e.preventDefault();
		$.ajax({
                type : 'POST',
                url : 'ajax/validasi.php',
                data : {dataForm},
             	// dataType:"json",
             	success : function(data){
             		if (data==true) {
             			toastr.success('Login Berhasil !');
             			window.location.href = "dashboard.php";
             		}else{
             			toastr.error('Login Gagal !, user dan password tidak cocok');
             			$('#usr').val('')
						$('#pss').val('')
						$('#usr').focus()
             		}

             	}
             })
})