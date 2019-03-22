package com.mukul.demo.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mukul.demo.spring.dao.patient_medical_details_DAO;
import com.mukul.demo.spring.model.patient_medical;

@Service("patient_medical_details_service")
public class patient_medical_details_serviceimpl implements patient_medical_details_service {
	@Autowired
	patient_medical_details_DAO c;
	@Transactional
	public List<patient_medical> getPatients_medical() {
		// TODO Auto-generated method stub
		return c.getPatients_medical();
	}

	
		
	//}
	@Transactional
	public patient_medical getPatient_medical(int theId) {
		// TODO Auto-generated method stub
		return c.getPatient_medical(theId);
	}
	@Transactional
	public void savePatient_medical(patient_medical thePatientmedical) {
		// TODO Auto-generated method stub
		c.savePatient_medical(thePatientmedical);
	}

	

	
		
	
	
	
	

}
