package com.mukul.demo.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mukul.demo.spring.model.customer;
//import com.mukul.demo.spring.service.customerservice;
import com.mukul.demo.spring.service.customerservice;

@Controller 
@RequestMapping("/customer")
public class customercontroller {
@Autowired
customerservice  customerService;
@GetMapping("/list")
public String listCustomer(Model theModel){
	
	List<customer> thecustomers=customerService.getCustomers();
	theModel.addAttribute("customer", thecustomers);
   return "list-customers";
	//return "demo";
	
}

@GetMapping("/showForm")
public String showFormForAdd(Model theModel){
	customer theCustomer=new customer();
	theModel.addAttribute("customer", theCustomer);
	return "customer-form";
	
}
@PostMapping("/saveCustomer")
public String saveCustomer(@ModelAttribute("customer") customer theCustomer){
	customerService.saveCustomer(theCustomer);
	return "redirect:/customer/list";
}
@GetMapping("/updateForm")
public String showFormForUpdate(@RequestParam("customerId") int theId,Model theModel){
	customer theCustomer=customerService.getCustomer(theId);
	theModel.addAttribute("customer", theCustomer);
	return"customer-form";
}
@GetMapping("/delete")
public String deleteCustomer(@RequestParam("customerId") int theId){
	customerService.deleteCustomer(theId);
	return"redirect:/customer/list";
}

}
