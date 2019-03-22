package com.mukul.demo.spring.dao;
import java.util.*;

import com.mukul.demo.spring.model.customer;
public interface customerDAO {

	public List<customer> getCustomers();

	public void saveCustomer(customer theCustomer);

	public customer getCustomer(int theId);

	public void deleteCustomer(int theId);
}

