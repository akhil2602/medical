package com.mukul.demo.spring.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mukul.demo.spring.dao.customerDAO;
import com.mukul.demo.spring.model.customer;

@Service("customerservice")
public class customerServiceImpl implements customerservice {
@Autowired
customerDAO c;
@Transactional
public List<customer> getCustomers() {
              // TODO Auto-generated method stub
              return c.getCustomers();
       }
       @Transactional
      public void saveCustomer(customer thecustomer) {
              // TODO Auto-generated method stub
              c.saveCustomer(thecustomer);
       }
      @Transactional
     public customer getCustomer(int theId) {
              // TODO Auto-generated method stub
    	  return c.getCustomer(theId);
       }
      @Transactional
      public void deleteCustomer(int theId) {
              // TODO Auto-generated method stub
              c.deleteCustomer(theId);
       }

}

