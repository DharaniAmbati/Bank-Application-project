package com.jsp.dao;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jsp.dto.Admin;
import com.jsp.dto.Customer;

public class AdminDao {
	EntityManager em = Persistence.createEntityManagerFactory("prashi").createEntityManager();
	EntityTransaction et = em.getTransaction();

	public Admin save(Admin customer) {
		et.begin();
		em.persist(customer);
		et.commit();
		return customer;
	}
	public Admin getByEmail(String key)throws Exception {
		Query query = em.createQuery("select a from Admin a where a.key=?1");
		query.setParameter(1, key);
		return (Admin) query.getSingleResult();
	}
}
