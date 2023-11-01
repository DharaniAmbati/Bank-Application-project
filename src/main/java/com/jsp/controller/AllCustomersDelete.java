package com.jsp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import com.jsp.dao.AdminDao;
import com.jsp.dao.CustomerDao;
import com.jsp.dto.Admin;
import com.jsp.dto.Customer;
@WebServlet("/alla")
public class AllCustomersDelete extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		CustomerDao dao = new CustomerDao();
		List<Customer> list = dao.getAll();
		req.setAttribute("customer", list);
		req.getRequestDispatcher("displyaallnoid.jsp").forward(req, res);
	}
}
