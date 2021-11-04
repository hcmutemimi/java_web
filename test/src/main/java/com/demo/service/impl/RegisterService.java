package com.demo.service.impl;


import com.demo.dao.IRegisterDAO;
import com.demo.dao.impl.RegisterDAO;
import com.demo.model.beans.RegisterModel;
import com.demo.service.IRegisterService;

public class RegisterService implements IRegisterService{

	//@Inject
	private IRegisterDAO registerDao;
	
	public RegisterService() {
		registerDao = new RegisterDAO();
    }
	
	@Override
	public RegisterModel register(RegisterModel registerModel) {
//		long registerId = registerDao.register(registerModel);
		registerDao.register(registerModel);
		System.out.println("Register success");

		return null;
	}

	@Override
	public long findByUserName(String email) {		
		long check = registerDao.findByUserName(email);
		//System.out.println(check);
		if(check==1) {
			return 1;
		}
		else {
			return 0;
		}		
	}

}