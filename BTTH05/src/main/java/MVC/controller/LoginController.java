package main.java.MVC.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.MVC.model.Login;
import main.java.MVC.utilities.Common;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String password;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		name = request.getParameter(Common.TXT_USERNAME);
		password =  request.getParameter(Common.TXT_PASSWORD);
		PrintWriter out =  response.getWriter();
		RequestDispatcher rd;
//		Login login = new Login();
//		login.setName(name);
//		login.setPassword(password);
//		request.setAttribute(Common.LOGIN, login);
		request.setAttribute("name", name);
			
		if(name.equals(Common.LOGIN) && password.equals(Common.PASSWORD)) {
			
			rd = request.getRequestDispatcher("/Home");
			rd.forward(request, response);
			
		}else {
			out.print("Username or Password không đúng");
			rd = request.getRequestDispatcher("/login.jsp");
			rd.include(request, response);
		}

	}

}
