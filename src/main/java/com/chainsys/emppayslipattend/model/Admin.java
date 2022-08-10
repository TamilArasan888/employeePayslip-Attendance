package com.chainsys.emppayslipattend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name="Admin")
public class Admin {
	@Id
	@Range(min=1,message="*Value should be greater than 0")
	@Column(name="admin_Id")
	private int adminID;
	
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
    @Pattern(regexp = "^[a-zA-Z]{3,20}$", message = "*Enter valid name ")
	@Column(name="admin_Name")
	private String adminName;
	
	@Pattern(regexp = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{5,20}$",
            message = "*Password must contain atleast 5 characters, 1 uppercase, 1 lowercase, 1 special character, 1 digit and a maximum of 20 characters")	
	@Column(name="admin_Password")
	private String adminPassword;

	public int getAdminID() {
		return adminID;
	}

	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	
	
}

