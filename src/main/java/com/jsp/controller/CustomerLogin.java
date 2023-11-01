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

@WebServlet("/login")
public class CustomerLogin extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		CustomerDao dao = new CustomerDao();
		try {
			Customer customer = dao.getByEmail(req.getParameter("email"));
			Bank bank=customer.getBank();
			if (customer.getPassword().equals(req.getParameter("password"))) {
				req.setAttribute("customer",customer);
				req.setAttribute("bank",bank);
				System.out.println(customer);
				RequestDispatcher dispatcher = req.getRequestDispatcher("display.jsp");
				dispatcher.forward(req, res);
			} else {
				req.setAttribute("msg","Enter Correct Password...!");
				RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
				dispatcher.include(req, res);
			}
		} catch (Exception exception) {
			req.setAttribute("msg","Enter Correct Email...!");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.include(req, res);
		}
		
	}
}
