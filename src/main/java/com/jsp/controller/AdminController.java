package com.jsp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import com.jsp.dao.AdminDao;
import com.jsp.dao.CustomerDao;
import com.jsp.dto.Admin;
import com.jsp.dto.Bank;
import com.jsp.dto.Customer;
import com.jsp.service.CustomerService;

@WebServlet("/key")
public class AdminController extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		AdminDao adminDao = new AdminDao();
		CustomerDao dao = new CustomerDao();
		List<Customer> list = dao.getAll();
		try {
			Admin admin = adminDao.getByEmail(req.getParameter("key"));
			req.setAttribute("customer", list);
			req.getRequestDispatcher("displyall.jsp").forward(req, res);
		}catch(Exception exception) {
			req.getRequestDispatcher("admin.html").include(req, res);
		}
	}
}
