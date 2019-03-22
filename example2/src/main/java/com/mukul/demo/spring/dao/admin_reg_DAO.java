package com.mukul.demo.spring.dao;

import java.util.List;

import com.mukul.demo.spring.model.admin;
import com.mukul.demo.spring.model.customer;

public interface admin_reg_DAO {

	
	public List<admin> getAdmins();

	public void saveAdmin(admin theAdmin);

	public admin getAdmin(int theId);

	public admin getLogin(int theId, String em);
}
