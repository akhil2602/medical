package com.mukul.demo.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class customer {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="id")
int id;
@Column(name="first_name")
String firstName;
@Column(name="last_name")
String lastName;
@Column(name="email")
String e_mail;
public customer(){}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getE_mail() {
	return e_mail;
}
public void setE_mail(String e_mail) {
	this.e_mail = e_mail;

}

@Override
public String toString() {
	return "customer [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", e_mail=" + e_mail + "]";
}

}
