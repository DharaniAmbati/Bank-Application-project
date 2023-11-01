package com.jsp.dao;

import javax.persistence.*;

import com.jsp.dto.Bank;
import com.jsp.dto.Customer;

public class CustomerDao {
	EntityManager em = Persistence.createEntityManagerFactory("prashi").createEntityManager();
	EntityTransaction et = em.getTransaction();

	public Customer save(Customer customer) throws Exception {
		et.begin();
		em.persist(customer);
		et.commit();
		return customer;
	}

	public Customer update(Customer customer) {
		Customer student2 = em.find(Customer.class, customer.getId());
		if (student2 != null) {
			customer.setId(student2.getId());
			customer.setBank(student2.getBank());
			et.begin();
			em.merge(customer);
			et.commit();
			return customer;
		} else
			return null;
	}

	public Customer delete(int id) {
		Customer customer = em.find(Customer.class, id);
		if (customer != null) {
			et.begin();
			em.remove(customer);
			et.commit();
			return customer;
		} else {
			return null;
		}
	}

	public Customer getById(int id) {
		Customer customer = em.find(Customer.class, id);
		if (customer != null)
			return customer;
		else
			return null;
	}

	public java.util.List<Customer> getAll() {
		Query query = em.createQuery("select a from Customer a");
		return query.getResultList();
	}
	public Customer getByEmail(String email) throws Exception {
		Query query = em.createQuery("select a from Customer a where a.email=?1");
		query.setParameter(1, email);
		return (Customer) query.getSingleResult();
	}
	public Bank updateByid(int id,long ammount) {
		Bank bank=em.find(Bank.class,id);
		if(bank!=null) {
			bank.setAvilableBalance(bank.getAvilableBalance()+id);
			et.begin();
			em.merge(bank);
			et.commit();
		}
		return bank;
	}
}
