	package com.jsp.controller;


import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import com.jsp.dao.CustomerDao;
import com.jsp.dto.Bank;
import com.jsp.dto.Customer;
import com.jsp.service.CustomerService;

@WebServlet("/update")
public class CustomerUpdate extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String id=req.getParameter("id");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");

		Customer customer = new Customer();
		customer.setId(Integer.parseInt(id));
		customer.setName(name);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setPhone(Long.parseLong(phone));
		customer.setAddress(address);

		CustomerDao dao=new CustomerDao();
		Customer customer2=dao.update(customer);
		System.out.println(customer2);
		if(customer2!=null)
			req.getRequestDispatcher("/login").include(req, res);
		else
			req.getRequestDispatcher("update.jsp").include(req, res);
	}
}
