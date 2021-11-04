package com.demo.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.service.ContentService;


/**
 * Servlet implementation class HomeController
 */
@WebServlet(name = "HomeServlet", urlPatterns = "/home/*")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  String path = request.getRequestURI();
		  
		  if (path == null || path.equals("/home")) {
		      path = "/";
		    }
		  System.out.println("path "+path);
		
		  try {
	            switch (path) {
	                case "/app/home":
	                	ContentService.getAllContents(request, response);
	                    break;
	                case "/app/home/edit":
	                	ContentService.showForm(request, response);
	                    break;
	                 default :
	                	 ContentService.getAllContents(request, response);
	                    break;
	                 
	            }
	        } catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
