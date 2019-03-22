package com.mukul.demo.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.mukul.demo.spring.model.patient_medical;
import com.mukul.demo.spring.service.patient_medical_details_service;


@Controller 
@RequestMapping("/patient_medical")
public class patient_medical_details_controller {
	
	@Autowired
	patient_medical_details_service  patientMedicalDetailsService;
	@GetMapping("/list")
	
public String listpatientMedicalDetails(Model theModel){
		
		List<patient_medical> thepatientsMedical=patientMedicalDetailsService.getPatients_medical();
		theModel.addAttribute("patient_medical", thepatientsMedical);
	   return "list-patients_medical";
		//return "demo";
		
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel){
		patient_medical thePatientMedical=new patient_medical();
		theModel.addAttribute("patient_medical", thePatientMedical);
		return "patient_medical_details";
		
	}
	@PostMapping("/savePatient_medical")
	public String savePatient_medical(@ModelAttribute("patient_medical") patient_medical thePatientmedical){
		patientMedicalDetailsService.savePatient_medical(thePatientmedical);
		return "redirect:/patient_medical/list";
	}
	
	

	

}
