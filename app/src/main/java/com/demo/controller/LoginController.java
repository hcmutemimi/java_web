package com.demo.controller;
import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.dao.userDAO;
import com.demo.model.beans.User;
import com.demo.service.ILoginService;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ILoginService loginService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/views/login/login.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = userDAO.userLogin(email, password);
		RequestDispatcher rd;
		if (user == null ) {
			request.setAttribute("login", user);
			rd = request.getRequestDispatcher("/views/login/login_error.jsp");
			rd.forward(request, response);
		} else
			request.setAttribute("login", user);
//			rd = request.getRequestDispatcher("/home");
			response.sendRedirect("home");
		
	}
}
