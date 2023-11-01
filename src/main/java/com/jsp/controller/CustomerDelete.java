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

@WebServlet("/delete")
public class CustomerDelete extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		CustomerDao customerDao=new CustomerDao();
		Customer person=customerDao.delete(Integer.parseInt(req.getParameter("id")));
		
		if (person != null) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("/alla");
			dispatcher.forward(req, res);
		} else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("Home.jsp");
			dispatcher.include(req, res);
		}
	}
}
