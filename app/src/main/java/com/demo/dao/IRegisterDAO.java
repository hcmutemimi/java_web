package com.demo.dao;

import com.demo.model.beans.RegisterModel;

public interface IRegisterDAO {
	long register(RegisterModel registerModel);
	long findByUserName(String email);
}
