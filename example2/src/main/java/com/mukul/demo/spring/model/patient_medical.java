package com.mukul.demo.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patients_medical_details")
public class patient_medical {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	int id;
	
	@Column(name="user_id")
	String user_id;
	
	
	
	@Column(name="checkin_date")
	String checkin_date;
	
	@Column(name="checkout_date")
	String checkout_date;
	
	@Column(name="treatment_status")
	String treatment_status;
	
	@Column(name="doctor_name")
	String doctor_name;
	
	@Column(name="height")
	String height;
	
	@Column(name="weight")
	String weight;
	
	@Column(name="blood_group")
	String blood_group;
	
	@Column(name="bed_no")
	String bed_no;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
	public String getCheckin_date() {
		return checkin_date;
	}
	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date;
	}
	public String getCheckout_date() {
		return checkout_date;
	}
	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date;
	}
	public String getTreatment_status() {
		return treatment_status;
	}
	public void setTreatment_status(String treatment_status) {
		this.treatment_status = treatment_status;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public String getBed_no() {
		return bed_no;
	}
	public void setBed_no(String bed_no) {
		this.bed_no = bed_no;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "patient_medical [id=" + id + ", user_id=" + user_id + ", checkin_date=" + checkin_date
				+ ", checkout_date=" + checkout_date + ", treatment_status=" + treatment_status + ", doctor_name="
				+ doctor_name + ", height=" + height + ", weight=" + weight + ", blood_group=" + blood_group
				+ ", bed_no=" + bed_no + "]";
	}
	
	
	
	

}
