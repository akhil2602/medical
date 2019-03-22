package com.mukul.demo.spring.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import com.mukul.demo.spring.model.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mukul.demo.spring.model.customer;
@Repository("customerDAO")
public class customerDAOimpl implements customerDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	public List<customer> getCustomers() {
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<customer> cq=cb.createQuery(customer.class);
		Root<customer> root=cq.from(customer.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
		
	}

	public void saveCustomer(customer theCustomer) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(theCustomer);
		
	}

public customer getCustomer(int theId) {
		// TODO Auto-generated method stub
	Session currentSession=sessionFactory.getCurrentSession();
		customer theCustomer=currentSession.get(customer.class, theId);
	
		return theCustomer;
	}
//
	public void deleteCustomer(int theId) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		customer book=currentSession.byId(customer.class).load(theId);
		
	currentSession.delete(book);
	customer theCustomer=currentSession.get(customer.class, theId);
		
		
	}


}
