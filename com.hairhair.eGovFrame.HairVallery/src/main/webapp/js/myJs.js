/**
 * 
 */

function move(url) {
	location.href = url;
}

function myImgSourceChange(){
		myFace.innerHTML = "<img src =\"" + insertForm.myFaceImg.value + "\">";
}



function readURL(input) {
    if (input.files && input.files[0]) {
    	var temp = input.value;
    	//temp.slice(temp.indexOf(".") + 1).toLowerCase();
    	
    	var fileExt = temp.substring(temp.lastIndexOf(".") + 1);

        var reg = /gif|jpg|jpeg|png/i; // 업로드 가능 확장자.
        
    	//if (!/(\.jpg|\.bmp|\.gif|\.png)$/i.test(temp.value)) {
    	if(reg.test(fileExt) == false){
    		alert('이미지 파일(jpg, png, gif, bmp)만 등록 가능합니다.');
    	
    		clearFileInput(input);
    		
    		return;
    	}
    	else{
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#myFace_main').attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
    	}
    }
}

function clearFileInput(ctrl) {
	  try {
	    ctrl.value = null;
	  } catch(ex) { }
	  
	  if (ctrl.value) {
	    ctrl.parentNode.replaceChild(ctrl.cloneNode(true), ctrl);
	  }
	}