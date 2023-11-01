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

@WebServlet("/edit")
public class CustomerEdit extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		CustomerDao dao = new CustomerDao();
		
		Customer cusomer=dao.getById(Integer.parseInt(req.getParameter("id")));
		Bank bank=cusomer.getBank();
		if(cusomer!=null) {
		 	req.setAttribute("cusomer", cusomer);
		 	req.setAttribute("bank",bank);
		 	RequestDispatcher dispatcher=req.getRequestDispatcher("update.jsp");
		 	dispatcher.forward(req, res);
		 	}
		 	else {
		 		RequestDispatcher dispatcher=req.getRequestDispatcher("/login");
		 		dispatcher.include(req, res);
		 	}
	}
}
