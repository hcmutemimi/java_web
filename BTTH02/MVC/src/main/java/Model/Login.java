package main.java.Model;

import main.java.Utilities.Common;
public class Login {
	private String name;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean validate() {
		if(password.equals(Common.PASSWORD)) {
			return true;
		}
		return false;
	}
	
}
