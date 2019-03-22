package com.mukul.demo.spring.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.mukul.demo.spring.model.customer;

public interface customerservice {
	
@Transactional  
	public List<customer> getCustomers();
	public void saveCustomer(customer theCustomer);
	public customer getCustomer(int theId);
	public void deleteCustomer(int theId);
	
}
