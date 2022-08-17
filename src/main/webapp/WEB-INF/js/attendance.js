/**
 * 
 */
 var attendanceDateCheck = function() {
	if(document.form.attendanceDate.value == ""){
		if(alert("Attendance Date cannot be blank.")){
			document.form.attendanceDate.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}


var inTimeCheck = function() {
	if(document.form.inTime.value == ""){
		if(alert("In Time cannot be blank.")){
			document.form.inTime.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}


var outTimeCheck = function() {
	if(document.form.outTime.value == ""){
		if(alert("Out Time cannot be blank.")){
			document.form.outTime.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}

var dailyTaskCheck = function() {
	if(document.form.dailyTask.value == ""){
		if(alert("Daily Task cannot be blank.")){
			document.form.dailyTask.focus();
		}
		else
			document.activeElement.blur();
    }
    else{
        return false;
    } 
}


var employeeIDCheck = function() {
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


