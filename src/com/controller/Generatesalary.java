package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BLManager;
import com.pojo.Employee;
import com.pojo.Salary;

/**
 * Servlet implementation class Generatesalary
 */
@WebServlet("/Generatesalary")
public class Generatesalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	BLManager bl=new BLManager();
	Employee e=new Employee();
	Salary s=new Salary();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		e = bl.serachbyempid(email);

		int eid = e.getEid();
		
		s=bl.serachbysalary(eid);
		
		session.setAttribute("sal", s);

		response.sendRedirect("salarypdf.jsp");
	}

}
