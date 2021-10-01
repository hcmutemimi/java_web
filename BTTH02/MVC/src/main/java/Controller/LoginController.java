package main.java.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.Model.Login;
import main.java.Utilities.Common;


/**
 * Servlet implementation class LoginController
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
		// TODO Auto-generated method stub
		name = request.getParameter(Common.TXT_USERNAME);
		password = request.getParameter(Common.TXT_PASSWORD);
		
		Login login = new Login();
		login.setName(name);
		login.setPassword(password);
		request.setAttribute(Common.LOGIN, login);
		
		boolean status = login.validate();
		RequestDispatcher dispatcher;
		if(name.equals(Common.LOGIN) && password.equals(Common.PASSWORD)) {
			dispatcher = request.getRequestDispatcher(Common.LOGIN_SUCCESS);
		}else {
			dispatcher = request.getRequestDispatcher(Common.LOGIN_ERROR);
			
		}
		dispatcher.forward(request, response);
	}

}
