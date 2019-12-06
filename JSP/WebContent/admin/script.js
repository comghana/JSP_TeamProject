
	function DeleteMem(mem_id){
		document.deleteMem.mem_id.value=mem_id;
		document.deleteMem.submit();
	}

	function UpdateReco(reco_name) {
		document.updateReco.reco_name.value=reco_name;
		document.updateReco.submit();
	}
	
	function productDetail(no) {
		document.detail.no.value=no;
		document.detail.submit();
	}

	function productDelete(no) {
		document.del.no.value=no;
		document.del.submit();
	}

	function productUpdate(no){
		document.update.no.value=no;
		document.update.submit();
	}


//order

	function orderDetail(no){
		document.detail.no.value=no;
		document.detail.submit();	
	}
	
	function orderUpdate(form){
		form.flag.value="update"
		form.submit();
	}
	
	function orderDelete(form) {
		form.flag.value="delete";
		form.submit();
	}
	

//order end