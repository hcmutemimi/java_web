package com.demo.service;

import com.demo.model.beans.RegisterModel;

public interface IRegisterService {
	RegisterModel register(RegisterModel registerModel);
	long findByUserName(String email);
}
