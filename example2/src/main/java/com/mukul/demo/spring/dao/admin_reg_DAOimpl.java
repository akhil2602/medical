package com.mukul.demo.spring.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mukul.demo.spring.model.admin;
import com.mukul.demo.spring.model.customer;


@Repository("admin_reg_DAO")
public class admin_reg_DAOimpl implements admin_reg_DAO {

	@Autowired
	SessionFactory sessionFactory;
	
	

	public List<admin> getAdmins() {
		
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<admin> cq=cb.createQuery(admin.class);
		Root<admin> root=cq.from(admin.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
		// TODO Auto-generated method stub
		
	}

	public void saveAdmin(admin theAdmin) {
		// TODO Auto-generated method stub
Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(theAdmin);
		
	}

	public admin getAdmin(int theId) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		admin theAdmin=currentSession.get(admin.class, theId);
		return theAdmin;
	}
	
	public admin getLogin(int theId,String em)
	{
		Session session=sessionFactory.getCurrentSession();
		
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<admin> cq=cb.createQuery(admin.class);
		Root<admin> root=cq.from(admin.class);
		cq.select(root);
		cq.where(cb.equal(root.get("user_id"),theId),(cb.equal(root.get("password"), em)));
		TypedQuery<admin> typed=session.createQuery(cq);
		try{
			return typed.getSingleResult();
		}
		catch(Exception e)
		{
			System.out.println("exc....");
			return null;
		}
		
		
	}
}
