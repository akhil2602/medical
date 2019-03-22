package com.mukul.demo.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mukul.demo.spring.dao.admin_reg_DAO;
import com.mukul.demo.spring.dao.customerDAO;
import com.mukul.demo.spring.model.admin;
@Service("admin_reg_service")
public class admin_reg_serviceimpl implements admin_reg_service {
	@Autowired
	admin_reg_DAO c;
	@Transactional
	public List<admin> getAdmins() {
		// TODO Auto-generated method stub
		return c.getAdmins();
	}
	@Transactional
	public void saveAdmin(admin theAdmin) {
		// TODO Auto-generated method stub
		 c.saveAdmin(theAdmin);
	}
	@Transactional
	public admin getAdmin(int theId) {
		// TODO Auto-generated method stub
		return c.getAdmin(theId);
	}
	
	@Transactional
	public admin getLogin(int theId,String em)
	{
		return c.getLogin(theId,em);
		
	}

}
