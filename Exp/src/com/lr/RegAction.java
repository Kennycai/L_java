package com.lr;

import com.opensymphony.xwork2.ActionSupport;

public class RegAction extends ActionSupport{
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String execute() throws Exception{
		return SUCCESS;
	}
}
