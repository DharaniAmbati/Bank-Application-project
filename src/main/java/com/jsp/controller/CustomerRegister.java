package com.jsp.controller;

import java.io.IOException;
import java.sql.SQLException;

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

@WebServlet("/register")
public class CustomerRegister extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		String IFCcode = req.getParameter("IFCcode");
		String accountNumber = req.getParameter("accountNumber");
		String branchName = req.getParameter("branchName");
		String avilableBalance = req.getParameter("avilableBalance");

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String phone = req.getParameter("phone");
		Bank bank = new Bank(IFCcode,Long.parseLong(accountNumber), branchName,Double.parseDouble(avilableBalance));
		String address = req.getParameter("address");

		Customer customer = new Customer();
		customer.setName(name);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setPhone(Long.parseLong(phone));
		customer.setBank(bank);
		customer.setAddress(address);

		System.out.println("Hai");
		CustomerService customerService = new CustomerService();

		try {
			customerService.save(customer);
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.html");
			dispatcher.forward(req, res);
			System.out.println(customerService.save(customer));
		} catch (Exception e) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("signup.html");
			dispatcher.include(req, res);
		}

	}
}
