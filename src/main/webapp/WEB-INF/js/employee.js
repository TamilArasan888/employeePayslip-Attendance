/**
 * 
 */
 var employeeFirstNameCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z\s]+$");
    if(!document.form.employeeFirstName.value.match(nameRegex)){
           if(alert("Employee First Name can't be empty and must contain only alphabets")){ 
                document.form.employeeFirstName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   }
}

var employeeLastNameCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z\s]+$");
    if(!document.form.employeeLastName.value.match(nameRegex)){
           if(alert("Employee Last Name can't be empty and must contain only alphabets")){ 
                document.form.employeeLastName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   }
}


var genderCheck = function() {
	if(document.form.employeeGender.value == ""){
		if(alert("Gender cannot be blank!! Select any of the button.")){
			document.form.employeeGender.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}


var dobCheck = function() {
	if(document.form.employeeDOB.value == ""){
		if(alert("Date of Birth cannot be blank")){
			document.form.employeeDOB.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}



var emailCheck = function() {
	var rg = new RegExp("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
	if(!document.form.employeeEmail.value.match(rg)){
		if(alert("Email is not valid!!.Enter a Valid Email.")){
			document.form.employeeEmail.focus();
		}
		else
			document.activeElement.blur();
	}
    else{
    	return false;
    }
}


var passwordCheck = function() {
	var rg = new RegExp("^[a-zA-Z)-9]{5,20}$");
	if(!document.form.employeePassword.value.match(rg)){
		if(alert("Password is not valid!! Password length must be 5 characters that contains alphabets or numbers.")){
			document.form.employeePassword.focus();
		}
		else
			document.activeElement.blur();
	}
    else{
    	return false;
    }
}



var phoneNumberCheck = function() {
	 var phoneRg = new RegExp("[1-9]{1}[0-9]{9}");
	 if(!document.form.employeePhoneNumber.value.match(phoneRg)){
			if(alert("Phone Number is not valid!! Phone number must be 10 digits.")){
				 document.form.employeePhoneNumber.focus();
			}
			else
				document.activeElement.blur();
		}
   else{
   	return false;
   }
}


var addressCheck = function() {
	 if(document.form.employeeAddress.value == ""){
			if(alert("Address cannot be blank")){ 
				 document.form.employeeAddress.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}


var jobIDCheck = function() {
	 if(document.form.employeeJobID.value == ""){
			if(alert("JobID cannot be blank")){ 
				 document.form.employeeJobID.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}


var employeeRoleCheck = function() {
	 if(document.form.employeeRole.value == ""){
			if(alert("Employee Role cannot be blank!! Select one of the option.")){ 
				 document.form.employeeRole.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}


var managerCheck = function() {
	 if(document.form.employeeManager.value == ""){
			if(alert("Manager name cannot be blank.")){ 
				 document.form.employeeManager.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}


var hireDateCheck = function() {
	 if(document.form.employeeHireDate.value == ""){
			if(alert("Hire Date cannot be blank.")){ 
				 document.form.employeeHireDate.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}


var workingHoursCheck = function() {
	 if(document.form.employeeWorkingHours.value == ""){
			if(alert("Working Hours cannot be blank.")){ 
				 document.form.employeeWorkingHours.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
}
