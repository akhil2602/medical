package com.mukul.demo.spring.service;

import java.util.List;

import com.mukul.demo.spring.model.admin;
import com.mukul.demo.spring.model.patient;

public interface patient_reg_service {
	
	
	public List<patient> getPatients();

	public void savePatient(patient thePatient);

	public patient getPatient(int theId);
	
	public patient getLogin(int theId, String em);

}
