package com.jsp.service;

import com.jsp.dao.BankDao;
import com.jsp.dao.CustomerDao;
import com.jsp.dto.Bank;
import com.jsp.dto.Customer;

public class CustomerService {
	CustomerDao dao=new CustomerDao();
	BankDao bankDao=new BankDao();
    public Customer save(Customer person) throws Exception {
		return dao.save(person);
	}
    public Customer update(Customer person) {
		return dao.update(person);
	}
    public Customer delete(int id) {
		return dao.delete(id);
	}
    public Customer getByEmail(String email) throws Exception {
		return dao.getByEmail(email);
	}
    public long avilableBalance(long addBlance) {
    	return addBlance;
    }
}
