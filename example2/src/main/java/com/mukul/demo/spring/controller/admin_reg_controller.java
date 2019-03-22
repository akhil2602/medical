package com.mukul.demo.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mukul.demo.spring.model.admin;
import com.mukul.demo.spring.model.customer;
import com.mukul.demo.spring.service.admin_reg_service;


@Controller 
@RequestMapping("/admin")
public class admin_reg_controller {
	@Autowired
	admin_reg_service  adminRegService;
	@GetMapping("/list")
	
	public String listadminReg(Model theModel){
		
		List<admin> theadmins=adminRegService.getAdmins();
		theModel.addAttribute("admin", theadmins);
	   return "list-admins";
		//return "demo";
		
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel){
		admin theAdmin=new admin();
		theModel.addAttribute("admin", theAdmin);
		return "admin_register";
		
	}
	@PostMapping("/saveAdmin")
	public String saveAdmin(@ModelAttribute("admin") admin theAdmin){
		adminRegService.saveAdmin(theAdmin);
		return "redirect:/admin/list";
	}
	
	@GetMapping("/login")
public String loginAdmin(@RequestParam("idd") int theId, @RequestParam("em") String em,Model theModel){
		
		admin theadmin=adminRegService.getLogin(theId,em);
		theModel.addAttribute("admin",theadmin);
		return "admin_homepage";
		
	}
	
	
	
	
	
	

}
