package com.demo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.model.beans.LoginModel;
import com.demo.service.ILoginService;
import com.demo.service.impl.LoginService;
import com.demo.utilities.Common;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ILoginService loginService;
	
	public LoginController() {
		loginService = new LoginService();
	}
	
	long check_login;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/views/login/login.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String email=request.getParameter("email_login");
		String password=request.getParameter("password_login");
				
		LoginModel loginModel=new LoginModel();
		loginModel.setEmail_login(email);
		loginModel.setPassword_login(password);
		
		RequestDispatcher rd;

		if ((email==Common.admin)&&(password==Common.admin_pass)) {
			request.setAttribute("login",loginModel);
			rd=request.getRequestDispatcher("/layout/layout.jsp");

			rd.forward(request, response);
		}
		else
		{
			check_login=0;
			check_login=loginService.login(email,password);
			if (check_login==1) {
				request.setAttribute("login",loginModel);
				rd=request.getRequestDispatcher("/layout/layout.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("login",loginModel);
				rd=request.getRequestDispatcher("/views/login/login_error.jsp");
				rd.forward(request, response);
			}
		}
	}
}
