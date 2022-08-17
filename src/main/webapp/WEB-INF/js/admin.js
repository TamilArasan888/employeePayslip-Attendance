/**
 * 
 */
 var adminIDCheck = function() {
	if(document.form.adminID.value == ""){
		if(alert("Admin Id cannot be blank")){
			document.form.adminID.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}
var adminNameCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z\s]+$");
    if(!document.form.adminName.value.match(nameRegex)){
           if(alert("Admin Name can't be empty and must contain only alphabets")){ 
                document.form.adminName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   }
}

var adminPasswordCheck = function() {
	var rg = new RegExp("^[a-zA-Z)-9]{5,20}$");
	if(!document.form.adminPassword.value.match(rg)){
		if(alert("Password is not valid!! Password length must be 5 characters that contains alphabets or numbers.")){
			document.form.adminPassword.focus();
		}
		else
			document.activeElement.blur();
	}
    else{
    	return false;
    }
}