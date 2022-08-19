/**
 * 
 */
 let payslipDateCheck = function() {
	if(document.form.payslipDate.value == ""){
		if(alert("Payslip Date cannot be blank")){
			document.form.payslipDate.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}


let employeeIDCheck = function() {
	if(document.form.employeeID.value == ""){
		if(alert("Empolyee Id cannot be blank.")){
			document.form.employeeID.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}