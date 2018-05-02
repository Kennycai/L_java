package com.lr;

import com.opensymphony.xwork2.ActionSupport;

public class ValidAction extends ActionSupport{
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public void validate() {
		if(username == null || "".equalsIgnoreCase(username.trim())) {
			addFieldError(username, "用户名不能为空！");
		}
		if(password == null || "".equalsIgnoreCase(password.trim())) {
			addFieldError(password, "密码不能为空！");
		}
	}
	public void validateLogin() {
		if(password.trim().length() < 3 || password.trim().length() > 8) {
			addFieldError(password, "密码在3到8之间！");
		}
	}
	public String login() throws Exception {
		return SUCCESS;
		
	}
	public String register() throws Exception {
		return SUCCESS;
		
	}
}
