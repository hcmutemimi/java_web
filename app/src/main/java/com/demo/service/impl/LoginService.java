package com.demo.service.impl;

import com.demo.dao.ILoginDAO;
import com.demo.dao.impl.LoginDAO;
import com.demo.service.ILoginService;


public class LoginService implements ILoginService{
	
	private ILoginDAO loginDao;
	
	public LoginService() {
		loginDao = new LoginDAO();
	}

	@Override
	public long login(String email, String password) {
		long  check_login = loginDao.login(email,password);
		if(check_login==1) {
			return 1;
		}
		else {
			return 0;
		}
	}
}