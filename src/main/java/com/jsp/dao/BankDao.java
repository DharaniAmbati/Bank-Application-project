package com.jsp.dao;

import javax.persistence.*;

import com.jsp.dto.Bank;
import com.jsp.dto.Customer;

public class BankDao {
	EntityManager em = Persistence.createEntityManagerFactory("prashi").createEntityManager();
	EntityTransaction et = em.getTransaction();

	public Bank save(Bank student) throws Exception {
		et.begin();
		em.persist(student);
		et.commit();
		return student;
	}

	public Bank update(Bank student) {
		Bank student2 = em.find(Bank.class, student.getId());
		if (student2 != null) {
			student.setId(student.getId());
			student.setIFCcode(student2.getIFCcode());
			student.setBranchName(student2.getBranchName());
			et.begin();
			em.merge(student);
			et.commit();
			return student;
		} else
			return null;
	}

	public Bank delete(int id) {
		Bank student = em.find(Bank.class, id);
		if (student != null) {
			et.begin();
			em.remove(student);
			et.commit();
			return student;
		} else {
			return null;
		}
	}

	public Bank getById(int id) {
		Bank student = em.find(Bank.class, id);
		if (student != null)
			return student;
		else
			return null;
	}

	public java.util.List<Bank> getAll() {
		Query query = em.createQuery("select a from Customer a");
		return query.getResultList();
	}

	public Bank getByEmail(String email) throws Exception {
		Query query = em.createQuery("select a from Bank a where a.email=?1");
		query.setParameter(1, email);
		return (Bank) query.getSingleResult();
	}
}
