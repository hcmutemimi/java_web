package com.demo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.model.beans.RegisterModel;
import com.demo.service.IRegisterService;
import com.demo.service.impl.RegisterService;

/**
 * Servlet implementation class RegisterController
 */
//@WebServlet (urlPatterns ={"/register"})
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// @Inject
	private IRegisterService registerService;

	public RegisterController() {
		registerService = new RegisterService();
	}

	long check;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/views/register/register.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");

		RegisterModel userModel = new RegisterModel();
		userModel.setUsername(username);
		userModel.setEmail(email);
		userModel.setPassword(password);
		userModel.setRe_password(re_password);

		RequestDispatcher rd;
		check = 0;
		check = registerService.findByUserName(email);
		if (check == 1) {
			request.setAttribute("model", userModel);
			rd = request.getRequestDispatcher("/views/register/register_email_error.jsp");
			rd.forward(request, response);
		} else {
			registerService.register(userModel);
			request.setAttribute("model", userModel);
			rd = request.getRequestDispatcher("/views/login/login.jsp");
			rd.forward(request, response);

		}
	}
		

}
