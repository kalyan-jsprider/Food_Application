package com.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/payment")
public class CustomerPaymentServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Double needToPay=(Double) req.getSession().getAttribute("pay");
		double payed=Double.parseDouble(req.getParameter("payment"));
		
		if(needToPay==payed)
		{
			resp.getWriter().write("<h1>PAID</h1>");
			req.getRequestDispatcher("mail").include(req, resp);
		}
		else
		{
			resp.getWriter().write("<h1>NOT PAID</h1>");
			req.getRequestDispatcher("customerpayment.jsp").include(req, resp);
		}
	}

}
