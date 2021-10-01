package main.java.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.Utilities.Common;
import main.java.Model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String password;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  response.sendRedirect("/home-page.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		name = request.getParameter(Common.TXT_USERNAME);
		password =  request.getParameter(Common.TXT_PASSWORD);
		PrintWriter out =  response.getWriter();
		RequestDispatcher rd;
		User user = new User();
		user.setName(name);
		user.setPassword(password);
		request.setAttribute(Common.LOGIN, user);
		request.setAttribute("name", name);
			
		if(name.equals(Common.LOGIN) && password.equals(Common.PASSWORD)) {
			rd = request.getRequestDispatcher("/home.jsp");
			rd.forward(request, response);
//			rd.forward(request, response);
//			response.sendRedirect("/home.jsp");
//			response.getWriter().append("Served at kkk: ").append(request.getContextPath());
//			rd = request.getRequestDispatcher("/Home");
//			rd.forward(request, response);
			
		}else {
			out.print("Username or Password không đúng");
			rd = request.getRequestDispatcher("/index.jsp");
			rd.include(request, response);
		}
	}

}
