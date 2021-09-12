function checkPwd(){
	if(document.getElementById("pwd").value==document.getElementById("rpwd").value){
		return true;
	}
	else{
		alert("Password missmatch !!! \nPlease Recheck the Password");
		return false;
	}
}