/**
 * 
 */

function attendanceDateCheck() {
       let date = document.getElementById('attendanceDate').value;
       let now = new Date();
       let dt1 = Date.parse(now),
       dt2 = Date.parse(date);
       if (dt2 >= dt1) {
            alert("Date must be in the past");
       }
 }


let inTimeCheck = function() {
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


let outTimeCheck = function() {
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

let dailyTaskCheck = function() {
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


