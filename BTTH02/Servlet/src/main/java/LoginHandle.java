package main.java;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginHandle
 */
@WebServlet("/LoginHandle")
public class LoginHandle extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private String name;
      private String password;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginHandle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("hihi");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf8");
		response.setContentType("text/html");
		
		name = request.getParameter("name");
		password =  request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		if(name.equals("")|| password.equals("")) {
			out.println("Vui lòng nhập đủ thông tin tên và mật khẩu!");
			
		}else if(name.equals("admin")&& password.equals("123456")) {
			out.println("Đăng nhập thành công, \n Hello "+ name);
			System.out.println(name);
		}else {
			
		out.println("Đăng nhập thất bại, Vui lòng thử lại sau!");
		
		}

		
	}

}
