package main.java;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"ISO-8859-1\">");
		out.println("<title>Servlet</title>");
		out.println("</head>");
		out.println("<style> ");
		out.println(".solid{");
		out.println("border-style: solid;");
		out.println("border-width: 0.05cm;");
		out.println("}");
		out.println("div.miniTitle{");
		out.println("margin-top: 20px;");
		out.println("font-size: 25px;");
		out.println("display:inline-block;");
		out.println("}");
		out.println(".login{");
		out.println("margin-top: 20px;");
		out.println("margin-left: 20px;");
		out.println("border-color: rgba(0,0,0,0.3);");
		out.println("border-radius: 5px;");
		out.println("padding: 10px 20px 10px 20px;");
		out.println("height: 170px;");
		out.println("width: 240px;");
		out.println("display: inline-block;");
		out.println("vertical-align: top;");    /*Cách fix việc 2 div không nằm thẳng hàng*/
		out.println("}");
		out.println(".register{");
		out.println("margin-top: 20px;");
		out.println("margin-left: 20px;");
		out.println("border-color: rgba(0,0,0,0.3);");
		out.println("border-radius: 5px;");
		out.println("padding: 10px 20px 10px 20px;");
		out.println("height: 260px;");
		out.println("width: 240px;");
		out.println("display: inline-block;");
		out.println("vertical-align: top;");    /*Cách fix việc 2 div không nằm thẳng hàng*/
		out.println("}");
		out.println(".login i{");
		out.println("color:red;");
		out.println("}");
		out.println(".register i{");
		out.println("color:red;");
		out.println("}");      
		out.println(".normalInput{");
		out.println("margin-top: 3px;");
		out.println("margin-bottom: 10px;");
		out.println("width: 230px;");
		out.println("height: 20px;");
		out.println("}");
		out.println(".shortInput{");
		out.println("margin-top: 3px;");
		out.println("margin-bottom: 10px;");
		out.println("width: 100px;");
		out.println("height: 20px;");
		out.println("}");
		out.println(".blurButton{");
		out.println("border: none;");
		out.println("background-color: rgba(0,0,0,0.05);");
		out.println("height: 30px;");		        
		out.println("}");
		out.println("#titleLogin{");
		out.println("margin-left: 20px;");
		out.println("font-family: Georgia, 'Times New Roman', Times, serif;");
		out.println("}");
		out.println("#outlineBorder{");
		out.println("border-color: rgba(255,165,0,1);");
		out.println("width: 630px;");
		out.println("height: 360px;");
		out.println("margin: auto;");
		out.println("}"); 
		out.println("#titleRegister{");
		out.println("margin-left: 230px;");
		out.println("font-family: Georgia, 'Times New Roman', Times, serif;");
		out.println("}");
		out.println("#inputFirstnameID{");
		out.println("margin-right: 20px;");
		out.println("}");
		out.println("#labelLastname{");
		out.println("margin-left: 50px;");
		out.println("}"); 
		out.println("#buttonLogin{");
		out.println("margin-bottom: 5px;");
		out.println("}");
		out.println("</style>");
		out.println("<body>");
		out.println("<div id=\"outlineBorder\" class=\"solid\">");
		out.println("<!--Mini title-->");
		out.println("<div class=\"miniTitle\" id=\"titleLogin\"><b>Login</b></div>");      
		out.println("<div class=\"miniTitle\" id=\"titleRegister\"><b>Register</b></div>");
		out.println("<br/>");
		out.println("<!--Form Login-->");
		out.println("<div class=\"solid login\" id=\"divLogin\">");
		out.println("<form action=\"LoginHandle\" id=\"formLogin\" method=\"post\">");
		out.println("<label id=\"labelUsername\">Username or email address<i>*</i></label><br/>");
		out.println("<input class=\"normalInput\" type=\"text\" name=\"name\"><br/>");
		out.println("<label id=\"labelPassword\">Password<i>*</i></label><br/>");
		out.println("<input class=\"normalInput\" type=\"password\" name=\"password\"><br/>");
		out.println("<button class=\"blurButton\" id=\"buttonLogin\"><b>LOGIN</b></button>");
		out.println("<input type=\"checkbox\" name=\"checkboxRememberMe\">Remember me<br/>");
		out.println("<a href=\"#\">Lost your password?</a>");
		out.println("</form>");
		out.println("</div>");
		out.println("<!--Form Register-->");
		out.println("<div class=\"solid register\" id=\"divRegister\">");
		out.println("<form action=\"RegisterHandle\" id=\"formRegister\" method=\"post\">");
		out.println("<label id=\"labelPhone\">Phone</label><br/>");
		out.println("<input class=\"normalInput\" type=\"text\" name=\"inputPhone\"><br/>");
	    out.println("<span id=\"spanFirstName\">");
	    out.println("<label id=\"lableFirstname\">First name<i>*</i></label>");
	    out.println("</span>");
	    out.println("<span id=\"spanLastName\">");
	    out.println("<label id=\"labelLastname\">Last name<i>*</i></label>");
	    out.println("</span><br/>");
	    out.println("<span id=\"spanInputFirstName\">");  
	    out.println("<input class=\"shortInput\" type=\"text\" name=\"inputFirstname\" id=\"inputFirstnameID\">");
	    out.println("</span>");
	    out.println("<span id=\"spanInputLastName\">");
	    out.println("<input class=\"shortInput\" type=\"text\" name=\"inputLastname\" id=\"inputLastnameID\">");
	    out.println("</span><br/>");
	    out.println("<label id=\"labelEmailAddress\">Email address<i>*</i></label><br/>");
	    out.println("<input class=\"normalInput\" type=\"text\" name=\"inputEmail\"><br/>");
	    out.println("<label id=\"labelPasswordRegister\">Password<i>*</i></label><br/>");
	    out.println("<input class=\"normalInput\" type=\"password\" name=\"inputPasswordRegister\"><br/>");
	    out.println("<button class=\"blurButton\" name=\"buttonRegister\"><b>REGISTER</b></button>");
	    out.println("</form>");
	    out.println("</div>");        
	    out.println("</div>");
	    out.println("</body>");
	    out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
